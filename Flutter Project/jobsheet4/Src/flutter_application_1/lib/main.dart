import 'package:flutter/material.dart';
// Import semua file yang telah dibuat
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart';
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/input_widget.dart';

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
          child: Scaffold(body: Center(child: MyDialogWidget())),
        ),
      ),
    );
  }
}
