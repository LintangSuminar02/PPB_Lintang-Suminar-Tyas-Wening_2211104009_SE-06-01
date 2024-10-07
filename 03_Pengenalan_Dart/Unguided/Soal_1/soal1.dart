import 'dart:io';

// Fungsi untuk mengevaluasi nilai berdasarkan kondisi yang diberikan
String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return ""; // Jika nilai tidak memenuhi kondisi di atas
  }
}

void main() {
  // Meminta input nilai dari user
  print('Masukkan nilai: ');
  String? input = stdin.readLineSync();  // Membaca input user sebagai string
  int? nilai = int.tryParse(input!);  // Mengubah input menjadi integer

  // Mengecek apakah input valid (integer)
  if (nilai != null) {
    // Mendapatkan hasil dari fungsi cekNilai
    String hasil = cekNilai(nilai);

    // Menampilkan output
    if (hasil.isNotEmpty) {
      print('$nilai merupakan $hasil');
    } else {
      print('Nilai tidak valid');
    }
  } else {
    print('Input nilai tidak valid, harap masukkan angka yang benar');
  }
}
