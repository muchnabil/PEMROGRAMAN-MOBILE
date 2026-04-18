import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Laporan Praktikum 3')),
        body: const Center(
          child: Text(
            'Muchammad Nabil Haykal Widarto (2341760152)', // GANTI DENGAN NAMA LENGKAPMU
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
