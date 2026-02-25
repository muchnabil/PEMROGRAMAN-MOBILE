/// Demonstrasi Semua Operator Tanpa Import

void main() {
  print("Program Operator Berjalan");

  int a = 10;
  int b = 4;

  // Operator Aritmatika
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");
  print("a % b = ${a % b}");

  // Operator Relasional
  print("a > b = ${a > b}");
  print("a == b = ${a == b}");

  // Operator Logika
  bool x = true;
  bool y = false;
  print("x && y = ${x && y}");
  print("x || y = ${x || y}");
  print("!x = ${!x}");

  // Operator Assignment
  int c = 5;
  c += 3;
  print("c setelah += 3 = $c");

  // Operator Ternary
  String hasil = a > b ? "a lebih besar" : "b lebih besar";
  print("Ternary: $hasil");

  // Null-aware operator
  String? nama;
  print("Nama: ${nama ?? "Tamu"}");

  // Type test
  print("a is int: ${a is int}");
}
