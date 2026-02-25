/// Program Konversi Mata Uang (Tanpa Input User)

void main() {
  print("=== KONVERSI MATA UANG ===");

  // Jumlah Rupiah
  double rupiah = 150000;

  // Nilai tukar tetap
  const double usd = 15500;
  const double eur = 17000;
  const double jpy = 110;

  // Perhitungan
  double hasilUsd = rupiah / usd;
  double hasilEur = rupiah / eur;
  double hasilJpy = rupiah / jpy;

  // Output
  print("Rupiah: Rp$rupiah");
  print("USD: ${hasilUsd.toStringAsFixed(2)}");
  print("EUR: ${hasilEur.toStringAsFixed(2)}");
  print("JPY: ${hasilJpy.toStringAsFixed(2)}");
}
