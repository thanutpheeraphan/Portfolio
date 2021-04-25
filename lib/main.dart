import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/createImg.dart';
import 'package:portfolio/craete_record/createRecord.dart';
import 'package:portfolio/record.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
      ),
  //  home: Record(),
     home: CreateRecord(),
    // home: CreateImg(),
    );
  }
}
