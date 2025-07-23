import 'package:dandi_project/main.layout.dart';
import 'package:flutter/material.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column', 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: 
        [Text('Widget text 1'),
        Text('Widget text 2'),
        Text('Widget text 3'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Row Widget 1'),
            Text('Row Widget 2'),
            Text('Row Widget 3'),
          ],
        )
        ],
      )
      );
  }
}