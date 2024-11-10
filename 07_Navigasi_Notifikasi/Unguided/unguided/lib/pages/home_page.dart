import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce Linud App'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.teal[50],
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    product.imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Rp ${product.price.toString()}',
                  style: TextStyle(color: Colors.green[700]),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.teal),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: product),
                    ),
                  );
                  // Menampilkan Snackbar saat item ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${product.name} dipilih'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
