void main() {
  print("=== PROGRAM BMI ===");

  // Deklarasi variabel
  double berat = 70; // dalam kg
  double tinggi = 1.75; // dalam meter

  // Validasi sederhana
  if (berat <= 0 || tinggi <= 0) {
    print("Data tidak valid!");
    return;
  }

  // Perhitungan BMI
  double bmi = berat / (tinggi * tinggi);

  // Menentukan kategori
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Overweight";
  } else {
    kategori = "Obesitas";
  }

  // Output
  print("Berat: $berat kg");
  print("Tinggi: $tinggi m");
  print("BMI: ${bmi.toStringAsFixed(2)}");
  print("Kategori: $kategori");
}
