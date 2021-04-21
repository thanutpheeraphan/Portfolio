import 'package:flutter/material.dart';
import 'package:portfolio/recordForm.dart';

class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height:50),
                Text("Academic Record",style: TextStyle(fontSize: 30),),
                SizedBox(height:100),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecordForm(),
                ),
              ]),
            )));
  }
}
