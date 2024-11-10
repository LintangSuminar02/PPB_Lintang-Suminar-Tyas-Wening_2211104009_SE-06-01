import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.teal[50],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  product.imageUrl,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal[700],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${product.price}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.green[700],
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            Text(
              product.description,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Produk ${product.name} ditambahkan ke keranjang!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // background color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Tambahkan ke Keranjang',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
