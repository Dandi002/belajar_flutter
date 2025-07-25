import 'package:dandi_project/latihan/lathan_detail.dart';
import 'package:flutter/material.dart';
import 'latihan_dua.dart'; // Pastikan file ini di-import

class LatihanDua extends StatelessWidget {
  LatihanDua({super.key});

  final List<Map<String, dynamic>> LatDua = [
    {
      "nama": "dandi",
      "gender": "pria",
      "image": "/images/ubud.jpg",
      "point": 20876,
      "level": 6,
      "bio": "abcd",
      "zodiac": "tidak punya",
    },
    {
      "nama": "esa",
      "gender": "pria",
      "image": "/images/ubud.jpg",
      "point": 20890,
      "level": 2,
      "bio": "abcde",
      "zodiac": "tidak punya",
    },
    {
      "nama": "nanda",
      "gender": "wanita",
      "image": "/images/ubud.jpg",
      "point": 20860,
      "level": 2,
      "bio": "abcdef",
      "zodiac": "tidak punya",
    },
    {
      "nama": "ujang",
      "gender": "pria",
      "image": "/images/ubud.jpg",
      "point": 20867,
      "level": 8,
      "bio": "abcdfgh",
      "zodiac": "tidak punya",
    },
    {
      "nama": "ujing",
      "gender": "pria",
      "image": "/images/ubud.jpg",
      "point": 20877,
      "level": 6,
      "bio": "abcdddd",
      "zodiac": "tidak punya",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellowAccent, Colors.cyan, Colors.black],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ListView.builder(
          itemCount: LatDua.length,
          itemBuilder: (context, index) {
            final item = LatDua[index];
            return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Gambar
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Nama
                  Expanded(
                    child: Text(
                      item['nama'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                   
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                      MaterialPageRoute(
                  builder: (context) =>
                   DetailPage(
                nama:LatDua[index]["nama"],
                gender:LatDua[index]["gender"],
                image:LatDua[index]["image"],
                point:LatDua[index]["point"],
                level:LatDua[index]["level"],
                bio:LatDua[index]["bio"],
                zodiac:LatDua[index]["zodiac"],
              )),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
