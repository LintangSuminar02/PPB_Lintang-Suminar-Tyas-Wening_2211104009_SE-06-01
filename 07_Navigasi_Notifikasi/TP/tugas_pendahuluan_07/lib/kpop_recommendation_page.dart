import 'package:flutter/material.dart';

class KpopRecommendationPage extends StatelessWidget {
  final List<Map<String, String>> recommendations = [
    {
      'name': 'SEVENTEEN',
      'imageUrl':
          'https://awsimages.detik.net.id/visual/2022/10/14/seventeen_169.jpeg?w=650',
      'description':
          'Seventeen adalah boy band asal Korea Selatan yang dibentuk oleh Pledis Entertainment. Grup yang terdiri dari 13 anggota ini dibagi berdasarkan spesialisasi keahlian masing-masing ke dalam 3 sub-unit; hip-hop unit, vocal unit, dan performance unit',
    },
    {
      'name': 'BABYMONSTER',
      'imageUrl':
          'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/11/10/anggota-babymonster-1073468732.jpeg',
      'description':
          'grup idol dari Korea Selatan yang dibentuk oleh YG Entertainment melalui program realitas survival yaitu “Last Evaluation”. Beranggotakan 7 orang gadis muda yang terdiri dari Ruka, Pharita, Asa, Ahyeon, Rami, Rora, dan Chiquita.',
    },
    {
      'name': 'EXO',
      'imageUrl':
          'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/jawapos/2019/01/penggemar-buat-10-years-challenge-member-exo-ini-hasilnya_m_275557.jpg',
      'description':
          'EXO merupakan salah satu boy group terkenal dengan lagu-lagu hits yang luar biasa.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('K-pop Recommendations'),
      ),
      body: ListView.builder(
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(recommendations[index]['imageUrl']!),
                  SizedBox(height: 10),
                  Text(
                    recommendations[index]['name']!,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    recommendations[index]['description']!,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
