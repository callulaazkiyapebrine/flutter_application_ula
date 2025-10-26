import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text(
          'Profil Saya',
          style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Color(0xFF007AFF),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'images/callulaa.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text("Callula Azkiya Pebrine", 
          style: TextStyle(fontSize: 16, color: Color(0xFF111111), fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text("Pengembangan Perangkat Lunak Dan Gim", 
          style: TextStyle(fontSize: 6, color: Color(0xFF44444)),
          ),
          SizedBox(height: 9),
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
               label: Text("Follow", style: TextStyle(color: Color(0xFFFFFFFF))),
               icon: Icon(Icons.person_add, color: Color(0xFFFFFFFF)),
               style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
               ),
                 ),
                   ElevatedButton.icon(
                onPressed: () {},
               label: Text("Follow", style: TextStyle(color: Color(0xFFFFFFFF))),
               icon: Icon(Icons.person_add, color: Color(0xFFFFFFFF)),
               style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF0056D2))
               ),
                   ),
            ],

          )

        ],
      ),
    );
  }
}