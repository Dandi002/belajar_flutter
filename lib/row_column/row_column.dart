import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan Row Column' 
    , body: Center(
      child: Container(
        height: 80,
        width: double.infinity,
        color: Color.fromARGB(255, 103, 75, 224),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.call), Text("Call"), 
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.navigation), Text("Navigation")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share), Text("Share")
              ],
            )
          ],
        ),
      ),
      )
    );
  }
}