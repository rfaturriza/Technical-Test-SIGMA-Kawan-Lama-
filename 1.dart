// Description: Count SIAPA in Random String
// Author: Rizky Faturriza
// Date: 6 February 2023

// Algorithm:
// Initial karakter S, I, A, P agar dapat menentukan jumlah kemunculan kata SIAPA
// Dengan menghitung jumlah karakter S, I, A, P
// Kemudian mencari nilai minimum diantara jumlah karakter S, I, A, P
// Dengan menggunakan fungsi rekursif countSiapa:
// Jika jumlah karakter A lebih besar dari 2 kali nilai minimum
// Maka jumlah kemunculan kata SIAPA adalah nilai minimum
// Jika jumlah karakter A lebih kecil dari 2 kali nilai minimum
// Maka jumlah kemunculan kata SIAPA akan di cari lagi dari fungsi rekursif countSiapa

// Contoh dengan Bahasa Dart

String count(String str) {
  int totalS = 'S'.allMatches(str).length;
  int totalI = 'I'.allMatches(str).length;
  int totalA = 'A'.allMatches(str).length;
  int totalP = 'P'.allMatches(str).length;

  final min = [totalS, totalI, totalA, totalP]
      .reduce((curr, next) => curr < next ? curr : next);
  return countSiapa(totalA, min).toString();
}

int countSiapa(int lenCharA, int min) {
  if (lenCharA >= (min * 2)) {
    return min;
  } else {
    return countSiapa(lenCharA, min - 1);
  }
}

void main() {
  String str = "SIAPAAAAAAASIAPPAISIPAS";
  print("Jumlah kemunculan kata 'SIAPA' dalam string '$str' adalah " +
      count(str));
}
