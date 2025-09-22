import 'package:flutter/material.dart';
import 'tugas_heading_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Flutter",
      home: LayoutListItem(), // ini halaman utama
    );
  }
}