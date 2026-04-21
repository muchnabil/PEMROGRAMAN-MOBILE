void main() {
  // 1. Identitas & Personalisasi NIM [cite: 5, 6]
  String nama = "Muchammad Nabil Haykal Widarto"; // Ganti dengan nama asli Anda
  String nim = "2341760152"; // Ganti dengan 10 digit NIM asli Anda

  // 2. Mengambil 3 digit terakhir NIM sebagai nilai unik [cite: 7, 31]
  // Contoh: Jika NIM akhir 123, maka nilaiUnikNIM adalah 123.0
  double nilaiUnikNIM = double.parse(nim.substring(nim.length - 3));

  // 3. Deklarasi Koleksi List<double> berisi minimal 5 angka desimal [cite: 8, 32]
  List<double> hargaBarang = [15000.0, 25500.0, 30000.0, 42000.0, 55000.0];

  // 4. Menambahkan nilaiUnikNIM sebagai elemen ke-6 [cite: 9, 33]
  hargaBarang.add(nilaiUnikNIM);

  // 5. Memanggil fungsi hitungTotal [cite: 12, 37]
  double totalAwal = hitungTotal(hargaBarang);

  // 6. Null Safety: Variabel keterangan diskon (nullable) [cite: 10, 44]
  String? pesanDiskon;
  double besarDiskon = 0;

  // 7. Control Flow (Percabangan) untuk logika diskon [cite: 14, 42]
  if (totalAwal > 200000) {
    besarDiskon = 0.10; // Diskon 10% [cite: 16]
    pesanDiskon = "Selamat! Anda mendapatkan diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    besarDiskon = 0.05; // Diskon 5% [cite: 18]
    pesanDiskon = "Selamat! Anda mendapatkan diskon 5%";
  } else {
    besarDiskon = 0.0; // Tidak ada diskon [cite: 20]
    pesanDiskon = "Maaf, Anda belum mendapatkan diskon.";
  }

  // 8. Menghitung Total Akhir
  double nilaiPotongan = totalAwal * besarDiskon;
  double totalAkhir = totalAwal - nilaiPotongan;

  // 9. Output menggunakan print() [cite: 21]
  print("=== Laporan Belanja Toko Terpersonalisasi ===");
  print("Nama          : $nama");
  print("NIM           : $nim");
  print("---------------------------------------------");
  print("Total Awal    : Rp ${totalAwal.toStringAsFixed(2)}");

  // Menggunakan operator ! untuk null safety saat mencetak [cite: 11, 48]
  print("Keterangan    : ${pesanDiskon!}");

  print("Besar Diskon  : Rp ${nilaiPotongan.toStringAsFixed(2)}");
  print("Total Akhir   : Rp ${totalAkhir.toStringAsFixed(2)}");
  print("=============================================");
}

// 10. Fungsi hitungTotal dengan perulangan for-in [cite: 12, 13, 38]
double hitungTotal(List<double> daftarHarga) {
  double total = 0;
  for (var harga in daftarHarga) {
    total += harga; // Menjumlahkan semua harga dalam list
  }
  return total;
}
