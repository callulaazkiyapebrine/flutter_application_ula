import 'package:flutter/material.dart';
import 'package:flutter_application_ula/objek_wisata.dart';
void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Objek Wisata',
      home: ObjekWisata(),
    );
  }
}