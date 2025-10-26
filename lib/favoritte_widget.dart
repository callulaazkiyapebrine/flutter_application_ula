import 'package:flutter/material.dart';

class FavoritteWidget extends StatefulWidget {
  const FavoritteWidget({super.key});

  @override
  State<FavoritteWidget> createState() => _FavoritteWidgetState();
}

class _FavoritteWidgetState extends State<FavoritteWidget> {
  bool _isFavorite = true;
  int _favoriteCount= 41;

  void toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount = -1;
        _isFavorite = false;
      }else{
         _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Favorite Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Tekan Bintang untuk menambahkan dan menghapus favorite",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.center,
                  ),
                 const SizedBox(height: 20),
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: toggleFavorite,
                     icon: _isFavorite 
                     ?const Icon(Icons.star)
                     : const Icon(Icons.star_border),
                     iconSize: 40,
                     color: Colors.red[500],
                     ),
                     const SizedBox(width: 10,),
                     Text(
                      '$_favoriteCount',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                     )
                  ],
                 )
               ],
              ),
             ),
            ),
          ),
        );
      }
    }