# PPB_Lintang-Suminar-Tyas-Wening_2211104009/09_API_Perangkat_Keras/Unguided

<div align="center">

**LAPORAN PRAKTIKUM** <br>
**PEMOGRAMAN PERANGKAT BERGERAK** <br>
**MODUL 9** <br>

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
1. (Soal)Modifikasi project pemilihan gambar yang telah dikerjakan pada Tugas Pendahuluan Modul 09 agar fungsionalitas tombol dapat berfungsi untuk mengunggah gambar.
<li> Ketika tombol Gallery ditekan, aplikasi akan mengambil gambar dari galeri, dan setelah gambar dipilih, gambar tersebut akan ditampilkan di dalam container. <br>
<li> Ketika tombol Camera ditekan, aplikasi akan mengambil gambar menggunakan kamera, dan setelah pengambilan gambar selesai, gambar tersebut akan ditampilkan di dalam container. <br>
<li> Ketika tombol Hapus Gambar ditekan, gambar yang ada pada container akan dihapus. <br>
_Note: Jangan lupa sertakan source code, screenshoot output, dan deskripsi program. Kreatifitas menjadi nilai tambah._


**Jawaban**
<li> Source Code pada `main.dart` :

![image](img/SourceCode_Main.png)
<br>

<li> Source Code pada `myapi_page.fart` :

![image](img/SourceCode_MyapiPage.png)
<br>

<li> Source Code pada `Image_Picker.dart` :

![image](img/SourceCode_ImagePicker.png)
<br>


<li> Screenshot Output : 
<li> Tampilan Awal<br>
  
![image](img/Output_Tampilan%20Awal.jpg) <br>

<li> Tampilan ketika pengguna mengklik camera <br>
  
![image](img/Output_TampilanCamera.jpg) <br>

<li> Tampilan Camera saat sudah diklik atau difoto <br>
  
![image](img/Output_TampilanDisplayCamera.jpg) <br>

<li> Tampilan camera yang sudah difoto akan muncul di containernya <br>

![image](img/Output_TampilanMunculContainer.jpg) <br>

<li> Tampilan ketika pengguna mengklik galery<br>

![image](img/Output_TampilanGalery.jpg) <br>

<li> Tampilan galery yang sudah dipilih dan diklik akan muncul di containernya <br>

![image](img/Output_TampilanGaleryMunculContainer.jpg) <br>

<li> Tampilan ketika pengguna mengklik button hapus maka gambar yang muncul di container akan terhapus <br>

![image](img/Output_TampilanHapus.jpg) <br>

<li> Deskripsi Program :
Aplikasi ini punya tiga tombol utama. Tombol Gallery dipakai buat pilih gambar dari galeri lewat metode ImagePicker.pickFromGallery(). Kalau gambar udah dipilih, langsung ditampilkan di container. Tombol Camera buat ambil gambar pake kamera lewat metode ImagePicker.pickFromCamera(), hasilnya juga langsung muncul di container. Tombol Hapus Gambar dipakai buat menghapus gambar dari container dengan manggil fungsi _clearImage(). Gambar yang dipilih atau diambil ditampilkan pake widget Image.file() di container yang udah disiapin.
