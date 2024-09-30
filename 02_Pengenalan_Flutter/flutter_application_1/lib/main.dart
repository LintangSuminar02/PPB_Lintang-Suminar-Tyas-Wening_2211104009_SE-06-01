import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Biodata"),
        ),
        body: BiodataCard(),
      ),
    );
  }
}

class BiodataCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Gambar Profil
          CircleAvatar(
            radius: 50,
            child: Image.asset('assets/profile.jpeg'),
          ),
          SizedBox(height: 20),
          // Nama dan Detail Biodata
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        "Nama: Lintang Suminar Tyas W",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.badge, color: Colors.green),
                      SizedBox(width: 10),
                      Text(
                        "NIM: 2211104009",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.female, color: Colors.orange),
                      SizedBox(width: 10),
                      Text(
                        "Jenis Kelamin: Perempuan",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.holiday_village, color: Colors.pink),
                      SizedBox(width: 10),
                      Text(
                        "Domisili: Purwokerto",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
