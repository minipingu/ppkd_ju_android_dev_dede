import 'package:flutter/material.dart';

class ForminputGrid extends StatelessWidget {
  const ForminputGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Form Input dan Grid')),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //judul form
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  'Form Pendaftaran Omke Gas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            //field input pendaftaran
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Nama lengkap',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Email Pengguna',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Telephone Pengguna',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        labelText: 'Input Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Silahkan Konfirmasi Password',
                        labelText: 'Konfirmasi Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'Wilayah Pemantauan Kualitas Udara Terdekat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
