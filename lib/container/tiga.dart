import 'package:dandi_project/container/dua.dart';
import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
 return MainLayout(                              
      title: 'container 3',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin:EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient
          (colors:[ Color.fromARGB(255, 243, 130, 1), Colors.blueGrey, Colors.tealAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)]
        ),
        child: Container(
          width: double.infinity,
        height: double.infinity,
        margin:EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient
          (colors:[ Colors.blueAccent, Colors.blueGrey, Colors.tealAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2)]
        ),
          child: Center(
            child: ElevatedButton(
              child: Text("Ke container 2"),
          onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(
              builder: (context)=>ContainerDua()
              )
             );
          },
          )
          ),
        ),
      ),
    );
  }
}