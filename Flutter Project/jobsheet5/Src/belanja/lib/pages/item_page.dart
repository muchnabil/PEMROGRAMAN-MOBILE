import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  // 1. Tambahkan variabel untuk menampung data
  final Item item;

  // 2. Tambahkan variabel tersebut ke dalam constructor
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Column(
        children: [
          Hero(
            tag: item.name, // Tag harus sama dengan di HomePage
            child: Image.asset(item.image),
          ),
          const SizedBox(height: 20),
          Text('Harga: Rp ${item.price}', style: const TextStyle(fontSize: 20)),
          Text('Stok tersedia: ${item.stock}'),
          Text('Rating: ${item.rating} / 5.0'),
          const Spacer(),
          // Footer untuk Nama & NIM (Instruksi nomor 5)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Muchammad Nabil Haykal Widarto - 2341760152',
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
