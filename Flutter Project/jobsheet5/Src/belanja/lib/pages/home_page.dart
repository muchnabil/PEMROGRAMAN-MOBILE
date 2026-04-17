import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart'; // Sesuaikan dengan nama project Anda

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Daftar barang simulasi
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'images/sugar.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'images/salt.jpg',
      stock: 20,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping List')),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          // gridDelegate mengatur jumlah kolom dan jarak antar kotak
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menampilkan 2 kolom ke samping
            childAspectRatio:
                0.65, // Mengatur rasio tinggi kotak agar tidak terlalu pendek
            mainAxisSpacing: 8, // Jarak vertikal antar kotak
            crossAxisSpacing: 8, // Jarak horizontal antar kotak
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                context.push('/item', extra: item);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // HERO WIDGET: Dibungkus di sini agar gambar bisa animasi
                    Hero(
                      tag: item.name, // Tag unik berdasarkan nama barang
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(item.image, fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Rp ${item.price}'),
                          const SizedBox(height: 4),
                          // Menambahkan Stok dan Rating sesuai Tugas 3
                          Text(
                            'Stok: ${item.stock} | ⭐ ${item.rating}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
