import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row', 
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
        [Text('Widget text 1'),
        Text('Widget text 2'),
        Text('Widget text 3')
        ],
      )
      );
  }
}