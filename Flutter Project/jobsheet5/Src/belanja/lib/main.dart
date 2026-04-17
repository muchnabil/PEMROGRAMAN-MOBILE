import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Import library baru
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:belanja/models/item.dart';

void main() {
  runApp(const MyApp());
}

// Buat konfigurasi router di luar class agar rapi
final GoRouter go_router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(
      path: '/item',
      builder: (context, state) {
        // Mengambil data item yang dikirim (extra)
        final item = state.extra as Item;
        return ItemPage(item: item);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:
          go_router, // Menghubungkan ke variabel go_router Anda di atas
      title: 'Shopping List',
      debugShowCheckedModeBanner:
          false, // Menghilangkan tulisan "debug" di pojok
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
