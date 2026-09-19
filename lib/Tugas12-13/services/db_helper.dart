import 'dart:developer';

import 'package:path/path.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/models/manager_model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  // DB init
  static final DBHelper _instance = DBHelper._internal();

  factory DBHelper() => _instance;

  DBHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'KOPDES.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE manager_kopdes (
          id INTEGER PRIMARY KEY AUTOINCREMENT, 
          name TEXT,
          email TEXT UNIQUE,
          phone TEXT UNIQUE,
          password TEXT,
          city TEXT
          )
          ''');
      },
    );
  }
  //

  //Create
  Future<bool> registerUser(ManagerModel manager) async {
    final db = await database;
    try {
      await db.insert('manager_kopdes', manager.toMap());
      return true;
    } catch (e) {
      log('Error saat mendaftarkan manajer: ${e.toString()}');
      return false;
    }
  }

  //Read
  Future<ManagerModel?> getManager(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query(
      'manager_kopdes',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (results.isNotEmpty) {
      return ManagerModel.fromMap(results.first);
    }

    return null;
  }

  //Read All
  Future<List<ManagerModel>> getAllManagers() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query('manager_kopdes');

    return results.map((map) => ManagerModel.fromMap(map)).toList();
  }

  //Delete
  Future<void> deleteManager(int id) async {
    final db = await database;
    await db.delete('manager_kopdes', where: 'id = ?', whereArgs: [id]);
  }

  //Update
  Future<bool> updateUser(ManagerModel manager) async {
    final db = await database;

    try {
      int count = await db.update(
        'manager_kopdes',
        manager.toMap(),
        where: 'id = ?',
        whereArgs: [manager.id],
      );

      return count > 0;
    } catch (e) {
      log('Error saat update manager: ${e.toString()}');
      return false;
    }
  }
}
