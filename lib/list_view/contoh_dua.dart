import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class ListViewDua extends StatelessWidget {
  const ListViewDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View Builder', 
      body: ListView.builder(
        itemCount: 10 ,
        itemBuilder : (context, Index){
          return Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            color : Colors.amber[(Index + 1) * 100],
            child: FlutterLogo(),
          );
        }
        )
      );
  }
}