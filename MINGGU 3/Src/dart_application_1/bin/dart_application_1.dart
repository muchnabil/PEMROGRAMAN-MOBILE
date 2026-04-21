import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'dart:io';

void main() {
  // List untuk menyimpan riwayat (Sesuai fitur: Riwayat perhitungan)
  List<Map<String, dynamic>> riwayatBMI = [];
  bool lanjut = true;

  print("=== Aplikasi Kalkulator BMI ===");

  while (lanjut) {
    // --- FITUR: INPUT TINGGI & BERAT (Branch: branch-input-validation) ---
    stdout.write("\nMasukkan berat badan (kg): ");
    String? inputBerat = stdin.readLineSync();

    stdout.write("Masukkan tinggi badan (cm): ");
    String? inputTinggi = stdin.readLineSync();

    // Validasi Input menggunakan tryParse
    double? berat = double.tryParse(inputBerat ?? '');
    double? tinggiCm = double.tryParse(inputTinggi ?? '');

    if (berat == null || tinggiCm == null || berat <= 0 || tinggiCm <= 0) {
      print("Error: Harap masukkan angka yang valid dan lebih dari nol.");
      continue;
    }

    // --- FITUR: KALKULASI BMI (Branch: branch-bmi-calculation) ---
    // Rumus: BMI = berat (kg) / tinggi^2 (m)
    double tinggiM = tinggiCm / 100;
    double bmi = berat / (tinggiM * tinggiM);

    // --- FITUR: KATEGORISASI (Branch: branch-bmi-calculation) ---
    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi >= 18.5 && bmi < 25) {
      kategori = "Normal";
    } else if (bmi >= 25 && bmi < 30) {
      kategori = "Gemuk (Overweight)";
    } else {
      kategori = "Obesitas";
    }

    print("Skor BMI Anda: ${bmi.toStringAsFixed(2)}");
    print("Kategori     : $kategori");

    // Menyimpan data ke riwayat untuk fitur perulangan
    riwayatBMI.add({
      'berat': berat,
      'tinggi': tinggiCm,
      'skor': bmi.toStringAsFixed(2),
      'status': kategori,
    });

    // --- FITUR: RIWAYAT PERHITUNGAN (Branch: branch-history-feature) ---
    stdout.write("\nIngin menghitung lagi? (y/n): ");
    String? pilihan = stdin.readLineSync()?.toLowerCase();
    if (pilihan != 'y') {
      lanjut = false;
    }
  }

  // Menampilkan riwayat menggunakan perulangan (Looping)
  print("\n=== Riwayat Perhitungan Anda ===");
  if (riwayatBMI.isEmpty) {
    print("Tidak ada riwayat.");
  } else {
    for (var i = 0; i < riwayatBMI.length; i++) {
      var item = riwayatBMI[i];
      print(
        "${i + 1}. Berat: ${item['berat']}kg | Hasil: ${item['skor']} (${item['status']})",
      );
    }
  }
  print("Program Selesai. Terima kasih!");
}
