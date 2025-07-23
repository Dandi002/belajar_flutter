import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class RcLatihan extends StatelessWidget {
  const RcLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
               margin:EdgeInsets.all(15),
              color: Colors.blue,
              child: Center(
                child: Text("P", style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),

           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin:EdgeInsets.all(15),
                child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin:EdgeInsets.all(15),
                 child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,  
                   margin:EdgeInsets.all(15), 
                 child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin:EdgeInsets.all(15),
                  child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin:EdgeInsets.all(24),
                 child: Image.network(
                    'https://tse4.mm.bing.net/th/id/OIP.olvJm14fvti29Ho9EZd9KgHaHW?rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
