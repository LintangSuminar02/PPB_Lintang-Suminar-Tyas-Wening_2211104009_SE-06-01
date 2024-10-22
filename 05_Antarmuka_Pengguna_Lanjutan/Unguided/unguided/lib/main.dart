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
        primarySwatch: Colors.green,
      ),
      home: WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  final List<Map<String, String>> wisataList = [
    {
      'nama': 'Curug Cipendok',
      'deskripsi': 'Air terjun yang mempesona dengan suasana sejuk dan alami.',
      'foto':
          'https://static.banyumaskab.go.id/website/documents/cilongokkec/IMG-20230613-WA0002.jpg',
      'ikon': '🌊'
    },
    {
      'nama': 'Baturaden',
      'deskripsi':
          'Tempat wisata pegunungan dengan banyak atraksi alam dan air panas.',
      'foto':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7QiZOLaguBIy2EpPvBNPYvmH8D5mbC0WQsA&s',
      'ikon': '🏞️'
    },
    {
      'nama': 'Pantai Menganti',
      'deskripsi':
          'Pantai Menganti adalah destinasi wisata di Kabupaten Kebumen, Jawa Tengah yang terkenal dengan keindahan alamnya',
      'foto':
          'https://www.soclyfe.com/storage/images/2023-03-09/YWpHNkgxVjBOTjlQ.jpg',
      'ikon': '🏖️'
    },
    {
      'nama': 'Museum Bank Rakyat Indonesia',
      'deskripsi': 'Museum yang kaya akan sejarah perbankan di Indonesia.',
      'foto':
          'https://www.mgriyahotel.com/wp-content/uploads/2017/08/MUSEUM-BRI-4.jpg',
      'ikon': '🏛️'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Wisata Banyumas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black54,
                      offset: Offset(2, 2),
                      blurRadius: 8,
                    ),
                    Shadow(
                      color: Colors.white,
                      offset: Offset(-2, -2),
                      blurRadius: 8,
                    ),
                  ],
                ),
              ),
              background: Image.network(
                'https://i.pinimg.com/564x/9b/02/6c/9b026cebadaec7d6306ee9f3c8ec5ac7.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return wisataItem(
                  context,
                  wisataList[index]['nama']!,
                  wisataList[index]['deskripsi']!,
                  wisataList[index]['foto']!,
                  wisataList[index]['ikon']!,
                );
              },
              childCount: wisataList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget wisataItem(BuildContext context, String nama, String deskripsi,
      String foto, String ikon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    foto,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      ikon,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    deskripsi,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Tindakan saat tombol ditekan
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Kunjungi $nama')),
                      );
                    },
                    child: Text('Kunjungi Tempat'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
