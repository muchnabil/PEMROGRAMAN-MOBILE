import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

bool isPrima(int angka) {
  if (angka <= 1) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}

void main() {}
