import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekomendasi Wisata"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text widget for place name
            Text(
              "Baturraden",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Image widget for place image
            Image.network(
              'http://4.bp.blogspot.com/-ymwBlkKMLoc/Vo9_Usb2GeI/AAAAAAAAAmA/93a9M_n1a6w/s1600/1.jpg', // ganti dengan URL gambar yang valid
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),

            // Text widget for description
            Text(
              "Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturraden menjadi destinasi favorit wisatawan lokal maupun mancanegara",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            // Button widget for visit action
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Menuju tempat wisata..."),
                  ),
                );
              },
              child: Text("Kunjungi Tempat"),
            ),
          ],
        ),
      ),
    );
  }
}
