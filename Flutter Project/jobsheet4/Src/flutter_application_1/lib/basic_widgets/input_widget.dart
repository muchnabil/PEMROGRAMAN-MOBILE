// input_widget.dart
import 'package:flutter/material.dart';

class MyInputWidget extends StatelessWidget {
  const MyInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nama',
      ),
    );
  }
}
