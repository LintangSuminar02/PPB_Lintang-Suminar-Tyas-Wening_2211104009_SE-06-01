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

![image](image/SourceCode_Product.png)
<br>


2. `pages/home_page.dart`, halaman ini menampilkan daftar produk. Ketika pengguna mengklik produk, akan diarahkan ke halaman detail produk
<li> Source Code pada `home_page.dart` :

![image](image/SourceCode_HomePage.png)
<br>


3. `pages/product_detail.dart`, halaman ini menampilkan detail produk yang dipilih, seperti gambar, deskripsi, dan harga
<li> Source Code pada `product_detail.dart` :

![image](image/SourceCode_DetailProduct.png)
<br>


4. `main.dart`, file utama yang mengatur navigasi ke halaman HomePage
<li> Source Code pada `main.dart`:

![image](image/SourceCode_Main.png)
<br>

<li> Screenshot Output : 
<li> Tampilan Home <br>
  
![image](image/ScreenshotOutput_TampilanHome.png) <br>
<li> Tampilan ketika pengguna mengklik produk maka yang diklik nanti akan muncul tampilan notifikasi (snackbar) dibagian bawah <br>
  
![image](image/Screenshot_Notifikasi(snackbar).png <br>
<li> Tampilan Detail Produk <br>
  
![image](image/ScreenshotOutput_TampilanDetailProduk.png) <br>
<li> Tampilan ketika pengguna mengklik "Tambahkan ke Keranjang" maka yang dklik akan muncul tampilan notifikasi (snackbar) dibagian bawah <br>

![image](image/ScreenshotOutput_Notifikasi(Snackbar).png) <br>

<li> Deskripsi Program :
Aplikasi e-commerce ini menampilkan daftar produk sepatu dan tas dengan struktur navigasi utama yang menghubungkan halaman utama dan halaman detail produk. Data produknya sendiri disimpan dalam file models/product.dart, dengan kelas Product yang punya beberapa atribut kayak nama, harga, deskripsi, dan link gambar. Di Homepage, produk ditampilkan dalam widget card (bentuk kartu) terus kalau kita klik cardnya maka pindahkan ke halaman detail produknya. Di halaman detail ada tombol 'Tambahkan ke Keranjang' yang kalau diklik bakal muncul notifikasi singkat (SnackBar). Tampilan keseluruhan aplikasi ini didominasi warna teal agar dapat memberikan kesan modern dan user-friendly.
