import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

void main() {
  print("=== Program Pengecek Bilangan Prima ===");

  // Menggunakan perulangan 'for' untuk mengecek angka satu per satu
  for (int i = 1; i <= 20; i++) {
    // Percabangan 'if' untuk memvalidasi hasil dari fungsi isPrima
    if (isPrima(i)) {
      print("Angka $i adalah Prima");
    }
  }

  print("=======================================");
}

/// Fungsi untuk mengecek apakah sebuah angka adalah bilangan prima
bool isPrima(int angka) {
  if (angka <= 1) return false; // Bilangan < 1 bukan prima

  // Perulangan untuk mengecek pembagi angka
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false; // Jika ada pembagi selain 1 dan angka itu sendiri
    }
  }
  return true;
}
