import 'package:flutter/material.dart';
import 'package:guided_09/image_picker.dart'; //Import halaman ImageFromGalleryEx
import 'package:guided_09/myapi_page.dart'; // Import halaman MyApiPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upload Gambar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilihan Gambar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kamera
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApiPage(),
                  ),
                );
              },
              child: Text('Ambil Gambar dari Kamera'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman pengambilan gambar dari galeri
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ImageFromGalleryEx(ImageSourceType.gallery),
                  ),
                );
              },
              child: Text('Ambil Gambar dari Galeri'),
            ),
          ],
        ),
      ),
    );
  }
}
