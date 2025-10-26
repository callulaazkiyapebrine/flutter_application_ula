import 'package:flutter/material.dart';

class ObjekWisata extends StatelessWidget {
  const ObjekWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: const Text(
          'Objek Wisata',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF007AFF),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(
                'images/objekwisata.jpg',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Text(
                      "Raja Ampat",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                  Icon(Icons.star, color: Colors.amber, size: 22),
                  SizedBox(width: 4),
                  Text(
                    "41",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Papua Barat Daya, Indonesia",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    Icon(Icons.call, color: Color(0xFF0056D2)),
                    SizedBox(height: 5),
                    Text("CALL", style: TextStyle(color: Color(0xFF0056D2))),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.near_me, color: Color(0xFF0056D2)),
                    SizedBox(height: 5),
                    Text("ROUTE", style: TextStyle(color: Color(0xFF0056D2))),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Color(0xFF0056D2)),
                    SizedBox(height: 5),
                    Text("SHARE", style: TextStyle(color: Color(0xFF0056D2))),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Raja Ampat terkenal dengan keindahan alam bawah lautnya yang luar biasa. "
                "Terdiri dari ribuan pulau kecil dengan air laut yang jernih, "
                "Raja Ampat menjadi surga bagi para penyelam karena memiliki beragam "
                "spesies ikan dan terumbu karang yang menakjubkan. "
                "Keindahan alamnya menjadikannya salah satu destinasi wisata terbaik di dunia.",
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}