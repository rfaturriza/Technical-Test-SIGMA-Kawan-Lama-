//  - Pada Sebuah toko anting 'kawanLamaJewel'
//    terdapat 3 jenis anting sebagai berikut
//    - Anting jenis Ruby dengan jumlah sebanyak 5 buah
//    - Anting jenis Topaz dengan jumlah sebanyak 3 Buah
//    - Anting jenis permata sebanyak 1 buah

//  - Jika setiap anting harus dijual perpasang
//  setiap jenisnya dengan harga sebagai berikut
//    - Ruby = Rp 1.000.000
//    - Topaz = Ro 1.250.000
//    - Permata = Rp 3.000.000

//  Buatlah suatu algoritma sederhana untuk menghitung potensi pendapatan
//  maksimum dari toko KawanLamaJewel

// ALGORITMA:

//  - Ruby ada 5 buah sehingga yang bisa dijual adalah 2 pasang
//  - Topaz ada 3 buah sehingga yang bisa dijual adalah 1 pasang
//  - Permata ada 1 buah sehingga tidak ada yang bisa dijual

//  - Jumlah pendapatan maksimum adalah
// untuk anting ruby = 2 * 1.000.000 = 2.000.000
// untuk anting topaz = 1 * 1.250.000 = 1.250.000
// untuk anting permata = 0 * 3.000.000 = 0
// Jumlah pendapatan maksimum adalah 3.250.000

// Contoh pada program Bahasa Dart

void main() {
  // Deklarasi variabel
  int ruby = 5;
  int topaz = 3;
  int permata = 1;
  int hargaRuby = 1000000;
  int hargaTopaz = 1250000;
  int hargaPermata = 3000000;
  int jumlahRuby = 0;
  int jumlahTopaz = 0;
  int jumlahPermata = 0;
  int totalPendapatan = 0;

  // Proses
  jumlahRuby = ruby ~/ 2;
  jumlahTopaz = topaz ~/ 2;
  jumlahPermata = permata ~/ 2;
  final totalPendapatanRuby = jumlahRuby * hargaRuby;
  final totalPendapatanTopaz = jumlahTopaz * hargaTopaz;
  final totalPendapatanPermata = jumlahPermata * hargaPermata;
  totalPendapatan =
      totalPendapatanRuby + totalPendapatanTopaz + totalPendapatanPermata;

  // Output
  print("Jumlah anting Ruby yang bisa dijual adalah $jumlahRuby pasang");
  print("Jumlah anting Topaz yang bisa dijual adalah $jumlahTopaz pasang");
  print("Jumlah anting Permata yang bisa dijual adalah $jumlahPermata pasang");
  print("Jumlah pendapatan maksimum adalah $totalPendapatan");
}
