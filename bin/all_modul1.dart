import 'dart:math';

// 5. Fungsi
int tambah(int a, int b) {
  return a + b;
}

// 6. Kelas dan Objek
class Mahasiswa {
  String nama;
  int usia;

  Mahasiswa(this.nama, this.usia);

  void perkenalan() {
    print('Halo, saya $nama dan saya berusia $usia tahun.');
  }
}

// 9. Async dan Await
Future<void> prosesData() async {
  await Future.delayed(const Duration(seconds: 1));
  print("Data diproses.");
}

Future<void> main() async {
  print("=== MODUL 1: PEMROGRAMAN MOBILE - BAHASA PEMROGRAMAN DART ===\n");

  // 1. Hello World
  print("--- 1. Program Hello World ---");
  print('hello world');
  print("");

  // 2. Tipe Data pada Dart
  print("--- 2. Tipe Data pada Dart ---");
  int angka = 10;
  double desimal = 3.14;
  String teks = "Halo, dunia!";
  bool benar = true;
  print("int: $angka");
  print("double: $desimal");
  print("String: $teks");
  print("bool: $benar");
  print("");

  // 3. Operasi Matematika dan Logika
  print("--- 3. Operasi Matematika dan Logika ---");
  int hasilTambah = 5 + 3;
  double hasilBagi = 10 / 2;
  bool hasilPerbandingan = 5 > 3;
  print("5 + 3 = $hasilTambah");
  print("10 / 2 = $hasilBagi");
  print("5 > 3 = $hasilPerbandingan");
  print("");

  // 4. Struktur Kontrol
  print("--- 4. Struktur Kontrol (if, for, while) ---");
  int angkaKontrol = 4;
  if (angkaKontrol > 5) {
    print("Angka lebih besar dari 5");
  } else {
    print("Angka tidak lebih besar dari 5");
  }

  for (int i = 0; i < 5; i++) {
    print("Iterasi ke-$i");
  }

  while (angkaKontrol > 0) {
    print("Nilai angka: $angkaKontrol");
    angkaKontrol--;
  }
  print("");

  // 5. Fungsi
  print("--- 5. Fungsi ---");
  int hasilFungsi = tambah(3, 7);
  print("Hasil penjumlahan: $hasilFungsi");
  print("");

  // 6. Kelas dan Objek
  print("--- 6. Kelas dan Objek ---");
  Mahasiswa mhs = Mahasiswa('Alice', 22);
  mhs.perkenalan();
  print("");

  // 7. Import
  print("--- 7. Import (dart:math) ---");
  int acak = Random().nextInt(10);
  print("Angka acak: $acak");
  print("");

  // 8. Eksepsi
  print("--- 8. Eksepsi (Exception Handling) ---");
  try {
    int a = 5 ~/ 0;
    print(a);
  } on UnsupportedError {
    print('Operasi tidak didukung');
  }

  try {
    int a = 5 ~/ 0;
    print(a);
  } catch (e) {
    print(e);
  }
  print("");

  // 9. Async dan Await
  print("--- 9. Async dan Await ---");
  print("Memulai pemrosesan...");
  await prosesData();
  print("Pemrosesan selesai.");
  print("\n=== SEMUA CONTOH BERHASIL DIJALANKAN ===");
}
