import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String image;
  final String gender;
  final int level;
  final int point;
  final String bio;
  final String zodiac;

  const DetailPage({
    super.key,
    required this.nama,
    required this.image,
    required this.gender,
    required this.level,
    required this.point,
    required this.bio,
    required this.zodiac,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail: $nama")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text("Nama   : $nama", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text("Gender : $gender"),
            Text("Level  : $level"),
            Text("Point  : $point"),
            Text("Bio    : $bio"),
            Text("Zodiac : $zodiac"),
          ],
        ),
      ),
    );
  }
}
