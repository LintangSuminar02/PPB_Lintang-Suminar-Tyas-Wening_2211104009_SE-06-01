import 'package:flutter/material.dart';
import 'kpop_recommendation_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/0/03/220315_S.COUPS.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Nama: Lintang Suminar Tyas Wening',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'NIM: 2211104009',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              'Kelas: SE0601.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              'Bio: Kesuksesan adalah perjalanan dan tujuan',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KpopRecommendationPage()),
                );
              },
              child: Text('Lihat Rekomendasi K-pop'),
            ),
          ],
        ),
      ),
    );
  }
}
