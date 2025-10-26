import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget{
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true; // status bintang (aktif / tidak)
  int _favoriteCount = 41; // jumlah favorite

  // Fungsi untuk toggle status favorit
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1; // kurangi jumlah
        _isFavorited = false; // ubah jadi tidak favorit
      } else {
        _favoriteCount += 1; // tambah jumlah
        _isFavorited = true; // ubah jadi favorit
      }
    });
  }

@override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[100], // warna latar belakang
    appBar: AppBar(
      title: const Text(
        'Favorite Widget',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: Card(
        elevation: 4, // efek bayangan
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // sudut membulat
        ),
        margin: const EdgeInsetsGeometry.all(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // teks petunjuk
              const Text(
                'Tekan bintang untuk menambahkan atau menghapus favorit',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // tombol bintang interaktif
                  IconButton(
                    iconSize: 40,
                    icon: _isFavorited
                    ? const Icon(Icons.star) // favorit
                    : const Icon(Icons.star_border), // tidak favorit
                    color: Colors.red[500],
                    onPressed: _toggleFavorite, // aksi klik
                  ),
                  const SizedBox(width: 10),
                  // teks jumlah favorit
                  Text(
                    '$_favoriteCount',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                     ),
                   ),
                  ],
                ),
             ],
           ),
         ),
       ),
     ),
   );
  }
}