import 'dart:io';

// Fungsi untuk mengecek apakah bilangan prima
bool cekPrima(int angka) {
  if (angka < 2) {
    return false; // Bilangan kurang dari 2 bukan bilangan prima
  }

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false; // Jika habis dibagi angka lain, bukan prima
    }
  }
  return true; // Jika tidak habis dibagi angka lain, maka prima
}

void main() {
  // Meminta input bilangan bulat dari user
  print('Masukkan bilangan bulat:');
  int? bilangan = int.tryParse(stdin.readLineSync()!);

  // Mengecek apakah input valid
  if (bilangan != null) {
    // Memanggil fungsi cekPrima dan memberikan output berdasarkan hasilnya
    if (cekPrima(bilangan)) {
      print('$bilangan adalah bilangan prima.');
    } else {
      print('$bilangan bukan bilangan prima.');
    }
  } else {
    print('Input tidak valid, harap masukkan bilangan bulat.');
  }
}
