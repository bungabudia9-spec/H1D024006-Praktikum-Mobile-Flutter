class Queue {
  final List<int> _queue = [];

  // Menambahkan data ke dalam antrean (Enqueue)
  void enqueue(int element) {
    _queue.add(element);
    print('enqueue($element) -> $_queue');
  }

  // Mengeluarkan data dari antrean sesuai prinsip FIFO (Dequeue)
  int? dequeue() {
    if (_queue.isEmpty) {
      print('dequeue() -> Antrean kosong, tidak ada data yang dapat dikeluarkan.');
      return null;
    }
    int removed = _queue.removeAt(0);
    print('dequeue() -> $removed');
    print('Sisa antrean: $_queue');
    return removed;
  }

  // Mengambil daftar antrean saat ini
  List<int> get antrean => _queue;
}

void main() {
  print('Implementasi Queue (FIFO)');
  Queue queue = Queue();
  print('Antrean awal: ${queue.antrean}');

  // Menambahkan elemen ke dalam antrean
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  // Mengeluarkan elemen pertama
  queue.dequeue();

  // Menambahkan elemen baru
  queue.enqueue(40);

  // Mengeluarkan sisa elemen hingga kosong
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();

  // Uji coba dequeue saat antrean sudah kosong
  queue.dequeue();
}
