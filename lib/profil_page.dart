import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text(
          'Profil saya',
          style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Color(0xFF007AFF),
      ),
      body: Column(
        children: [
            SizedBox(height: 18),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
               child: Image.asset(
                'images/callulaa.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover),
            )
            ),
        
          SizedBox(height: 16), 
          Card(
             margin: EdgeInsets.all(20),
             elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama: Callula Azkiya Pebrine"),
                  Text("Kelas: XI RPL 2"),
                  Text("Sekolah: SMK YPC"),
                  Text("Hobi: Desain & Coding"),
                ],
              ),
            ),
          ),
          Text(
            "Callula Azkiya Pebrine",
            style: TextStyle(fontSize: 20,  color: Color(0xFF111111), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Pengembangan Perangkat Lunak dan Gim",
          style: TextStyle(fontSize: 16, color: Color(0XFF444444)),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Follow", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.person_add, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
              ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Message", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.message, color: Color(0xFFFFFFFF)),
                style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
              ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Email", style: TextStyle(color: Color(0xFFFFFFFF))),
                icon: Icon(Icons.email, color: Color(0xFFFFFFFF)),
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