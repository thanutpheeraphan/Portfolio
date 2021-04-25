import 'package:flutter/material.dart';
import 'package:portfolio/screens/Table.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
        SizedBox(height: 50),
          ShowRecord(),
        ],
        ),
    );
  }

}

