# PPB_Lintang-Suminar-Tyas-Wening_2211104009/07_Navigasi_dan_Notifikasi/Unguided

<div align="center">

**LAPORAN PRAKTIKUM** <br>
**PEMOGRAMAN PERANGKAT BERGERAK** <br>
**MODUL 7** <br>

<p align="center">

![image](image/logoTel-u.jpeg)
</p>

Oleh:<br>
Lintang Suminar Tyas Wening<br>
2211104009<br>
SE-06-01<br>
<br>
<br>

**PRODI S1 REKAYASA PERANGKAT LUNAK** <br>
**FAKULTAS INFORMATIKA** <br>
**TELKOM UNIVERSITY PURWOKERTO** <br>
**2024** <br>
</div>

---

## UNGUIDED
**Tugas Mandiri** <br>
<li> (Soal)Buatlah satu project untuk menampilkan beberapa produk dan halaman e-commerce dengan menerapkan class model serta navigasi halaman. <br>
_Note: Jangan lupa sertakan source code, screenshoot output, dan deskripsi program. Kreatifitas menjadi nilai tambah._

**Jawaban**
1. `models/product.dart`, file ini berisi class `Product` untuk merepsentasikan data produk
<li> Source Code pada `product.dart` :
```
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });
}

final List<Product> products = [
  Product(
    id: '1',
    name: 'Sepatu Nike Air Max 200',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 2700000,
    imageUrl:
        'https://images.tokopedia.net/img/cache/500-square/product-1/2020/7/10/2281889/2281889_3ed6889e-553c-4643-ad2a-4574b916fc0f_800_800.jpg',
    category: 'Sepatu',
  ),
  Product(
    id: '2',
    name: 'Tas Ransel Antarestar',
    description: 'Tas ransel yang nyaman dan cocok untuk bepergian.',
    price: 200000,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5mPq85oI0Zeiqas4yR4PtJ0rtU21pVgOv6A&s',
    category: 'Tas',
  ),
  Product(
    id: '3',
    name: 'Sepatu Nike MAX 97',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 1800000,
    imageUrl:
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a3671b8-f115-44f6-9ab6-3798d55210eb/custom-nike-air-max-97-shoes-by-you.png',
    category: 'Sepatu',
  ),
  Product(
    id: '4',
    name: 'Tas Ransel',
    description: 'Sepatu sneakers keren untuk aktivitas sehari-hari.',
    price: 2700000,
    imageUrl:
        'https://vernyx.com/cdn/shop/products/TSJ474-_21_1024x1024.jpg?v=1633493160',
    category: 'Tas',
  ),
];
<br>


2. `pages/home_page.dart`, halaman ini menampilkan daftar produk. Ketika pengguna mengklik produk, akan diarahkan ke halaman detail produk
<li> Source Code pada `home_page.dart` :
```
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
<br>


3. `pages/product_detail.dart`, halaman ini menampilkan detail produk yang dipilih, seperti gambar, deskripsi, dan harga
<li> Source Code pada `product_detail.dart` :
```
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
<br>


4. `main.dart`, file utama yang mengatur navigasi ke halaman HomePage
<li> Source Code pada `main.dart`:
```
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Linud App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}
<br>

<li> Screenshot Output : 
<li> Tampilan Home
![image](image/ScreenshotOutput_TampilanHome.png) <br>
<li> Tampilan ketika pengguna mengklik produk maka yang diklik nanti akan muncul tampilan notifikasi (snackbar) dibagian bawah
![image](image/Screenshot_Notifikasi(snackbar).png <br>
<li> Tampilan Detail Produk
![image](image/ScreenshotOutput_TampilanDetailProduk.png) <br>
<li> Tampilan ketika pengguna mengklik "Tambahkan ke Keranjang" maka yang dklik akan muncul tampilan notifikasi (snackbar) dibagian bawah
![image](image/ScreenshotOutput_Notifikasi(Snackbar).png) <br>

<li> Deskripsi Program :
Aplikasi e-commerce ini menampilkan daftar produk sepatu dan tas dengan struktur navigasi utama yang menghubungkan halaman utama dan halaman detail produk. Data produknya sendiri disimpan dalam file models/product.dart, dengan kelas Product yang punya beberapa atribut kayak nama, harga, deskripsi, dan link gambar. Di Homepage, produk ditampilkan dalam widget card (bentuk kartu) terus kalau kita klik cardnya maka pindahkan ke halaman detail produknya. Di halaman detail ada tombol 'Tambahkan ke Keranjang' yang kalau diklik bakal muncul notifikasi singkat (SnackBar). Tampilan keseluruhan aplikasi ini didominasi warna teal agar dapat memberikan kesan modern dan user-friendly.


