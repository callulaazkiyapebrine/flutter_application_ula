import 'package:flutter/material.dart';

class Latihanprofil extends StatelessWidget {
  const Latihanprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text(
          'Profil Saya',
          style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
        ),
        backgroundColor:Color(0xFF007AFF),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: ClipOval(
              child: (Image.asset(
                'images/callulaa.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(height: 20),

          Text(
            'Callula Azkiya Pebrine',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111111),
            ),
          ),
          Text(
            'Kelas XI RPL 2',
            style: TextStyle(fontSize: 16, color: Color(0XFF444444)),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.call, color: Color(0xFFFFFFFF) ),
                label: const Text('Call',style: TextStyle(color: Color(0xFFFFFFFF))),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.route, color: Color(0xFFFFFFFF)),
                label: const Text('Route', style: TextStyle(color: Color(0xFFFFFFFF))),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share, color: Color(0xFFFFFFFF)),
                label: const Text('Share',  style: TextStyle(color: Color(0xFFFFFFFF))),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}