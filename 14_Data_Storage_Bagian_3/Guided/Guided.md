# PPB_Lintang-Suminar-Tyas-Wening_2211104009/14_Data_Storage_Bagian_3/Guided

<div align="center">

**LAPORAN PRAKTIKUM** <br>
**PEMROGRAMAN PERANGKAT BERGERAK** <br>
**MODUL 14** <br>

<p align="center">

![image](img/logoTel-u.jpeg)

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
# GUIDED
**SOURCE CODE PRAKTIKUM DIKELAS**
<li> Source Code Main Dart

![image](img/Sourcecode_Main.png) <br>

<li> Source Code homescreen

![image](img/Sourcecode_Homescreen.png) <br>

<li> Source Code API Screen

![image](img/Sourcecode_API_Screen.png) <br>

**SCREENSHOT OUTPUT PRAKTIKUM DIKELAS**
<li> Screenshot tampilan awal HTTP REQUEST EXAMPLE

![image](img/output_tampilanAwal.png) <br>

<li> Screenshot tampilan saat mengklik button "GET"

![image](img/output_tampilanKlikGET.png) <br>

<li> Screenshot tampilan saat mengklik button "POST"

![image](img/output_tampilanKlikPOST.jpeg) <br>

<li> Screenshot tampilan saat mengklik button "UPDATE"

![image](img/output_tampilanKlikUPDATE.png) <br>

<li> Screenshot tampilan saat mengklik button "DELETE"

![image](img/output_tampilanKlikDELETE.png) <br>

**DESKRIPSI PROGRAM** <br>
Program ini adalah contoh implementasi Flutter untuk melakukan operasi HTTP (GET, POST, UPDATE, DELETE) terhadap API menggunakan ApiService. Data yang diambil disimpan dalam _posts dan ditampilkan sebagai daftar. Program memanfaatkan fungsi _handleApiOperation untuk menangani operasi API, menampilkan indikator loading, dan memberi notifikasi sukses atau error dengan SnackBar. Antarmukanya mencakup tombol untuk setiap operasi HTTP dengan warna berbeda, indikator loading, dan daftar data yang diperbarui secara otomatis. 

Layanan API dijalankan menggunakan bahasa Dart dan package http untuk menangani operasi HTTP terhadap API publik https://jsonplaceholder.typicode.com. Fungsi fetchPosts mengambil data dari server dan menyimpannya ke dalam daftar posts, fungsi createPost mengirimkan data baru ke server sekaligus memperbarui daftar lokal, fungsi updatePost memperbarui data tertentu (ID 1) di server, sedangkan deletePost menghapus data berdasarkan ID yang sama. Program memeriksa status HTTP untuk memastikan setiap operasi berhasil dan melempar exception jika terjadi kesalahan. Untuk pengembangan lebih lanjut, aplikasi dapat ditingkatkan dengan penggunaan ID dinamis atau fitur caching data.
