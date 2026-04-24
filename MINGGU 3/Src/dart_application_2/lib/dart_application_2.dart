void main() {
  int awal = 1;
  int akhir = 20;

  print("Bilangan prima antara $awal dan $akhir adalah:");

  for (int i = awal; i <= akhir; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima");
    } else {
      // Opsional: print jika bukan prima
      // print("$i bukan prima");
    }
  }
}

bool isPrima(int angka) {
  if (angka <= 1) return false;

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
