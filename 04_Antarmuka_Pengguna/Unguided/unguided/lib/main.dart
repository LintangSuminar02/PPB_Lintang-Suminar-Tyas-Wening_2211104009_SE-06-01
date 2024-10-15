import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WisataListScreen(),
    );
  }
}

class WisataListScreen extends StatelessWidget {
  final List<Wisata> wisataList = [
    Wisata(
      name: 'Curug Cipendok',
      description: 'Air terjun yang indah di kaki Gunung Slamet.',
      imageUrl:
          'https://static.banyumaskab.go.id/website/documents/cilongokkec/IMG-20230613-WA0002.jpg',
    ),
    Wisata(
      name: 'Baturaden',
      description: 'Destinasi wisata pegunungan yang sejuk.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7QiZOLaguBIy2EpPvBNPYvmH8D5mbC0WQsA&s',
    ),
    Wisata(
      name: 'Taman Andhang Pangrenan',
      description: 'Taman kota yang cocok untuk bersantai bersama keluarga.',
      imageUrl:
          'https://img.okezone.com/content/2020/11/29/408/2318152/siapa-sangka-taman-kota-instagramable-ini-dulunya-bekas-terminal-bus-Ng1WBXnMfo.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata Banyumas'),
      ),
      body: ListView.builder(
        itemCount: wisataList.length,
        itemBuilder: (context, index) {
          final wisata = wisataList[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  wisata.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    wisata.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    wisata.description,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol diklik, bisa diarahkan ke halaman detail
                    },
                    child: Text('Kunjungi Tempat'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Wisata {
  final String name;
  final String description;
  final String imageUrl;

  Wisata({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
