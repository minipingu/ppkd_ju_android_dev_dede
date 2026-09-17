import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11/services/preference_handler.dart';

class Home extends StatelessWidget {
  final String? email;
  const Home({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          Center(
            child: Text(
              'Home Screen, $email',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ), // Text
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                PreferenceHandler.logOut();
                context.go('login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                // textStyle: TextStyle(color: Colors.white),
              ),
              child: Text("Logout"),
            ),
          ),
        ],
      ), // Center
    ); // Scaffold
  }
}
