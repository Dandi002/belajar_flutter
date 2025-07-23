import 'package:dandi_project/list_view/detail_wisata_screen.dart';
import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});
  
  //data
  final List<Map<String, dynamic>> WisataData = [
    {
      "nama" : "ubud",
      "kota" : "bali",
      "image" : "/images/ubud.jpg",
      "desc" : "Ubud adalah salah satu pantai di bali..",
    },
    {
      "nama" : "pantai kuta",
      "kota" : "bali",
      "image" : "/images/pkura.jpg",
      "desc" : "Pantai Kuta adalah salah satu wisata di bali..",
    },
    {
      "nama" : "Nusa Penida",
      "kota" : "bali",
      "image" : "/images/nusapenida.jpg",
      "desc" : "Nusa penida adalah salah satu wisata di bali..",
    },
    {
      "nama" : "Ranca Upas",
      "kota" : "Bandung",
      "image" : "/images/rancaupas.jpg",
      "desc" : "Ranca Upas adalah salah satu destinasi alam di bandung..",
    },
    {
      "nama" : "wisata",
      "kota" : "bali",
      "image" : "/images/cover.jpg",
      "desc" : "ini adalah salah satu tempat wisata di bali..",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellowAccent, Colors.cyan, Colors.black],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )
      ),
      child: ListView.builder(
        itemCount: WisataData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) =>
                   DetailWisataScreen(
                nama:WisataData[index]["nama"],
                kota:WisataData[index]["kota"],
                image:WisataData[index]["image"],
                desc:WisataData[index]["desc"],
              )),
              );
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              height: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("${WisataData[index]["image"]}"),
                  fit: BoxFit.cover,
                  ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black
                ),
                child: Text(
                  "${WisataData[index]["nama"]} - ${WisataData[index]["kota"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14,
                  color: Colors.white),
                ),
              ),
            ),
          );
        }),
    ));
  }
}

