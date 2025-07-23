import 'package:dandi_project/container/dua.dart';
import 'package:dandi_project/container/satu.dart';
import 'package:dandi_project/container/tiga.dart';
import 'package:dandi_project/list_view/contoh_dua.dart';
import 'package:dandi_project/list_view/contoh_empat.dart';
import 'package:dandi_project/list_view/contoh_satu.dart';
import 'package:dandi_project/list_view/contoh_tiga.dart';
import 'package:dandi_project/list_view/wisata_screen.dart';
import 'package:dandi_project/row_column/column_satu.dart';
import 'package:dandi_project/row_column/latihanrrc.dart';
import 'package:dandi_project/row_column/row_column.dart';
import 'package:dandi_project/row_column/row_satu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WisataScreen(),
    );
  }
}

class HelloFlutter extends StatelessWidget {  
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello flutter', style: TextStyle(
        color: Colors.green,
        fontSize: 25, 
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.indigoAccent)));
  }
}