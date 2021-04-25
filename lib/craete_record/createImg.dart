import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/img.dart';

class CreateImg extends StatelessWidget {
  final AppBar appBar = AppBar(
    iconTheme: IconThemeData(
      color: Color(0xFFF2A154),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFF314E52),
    title: Text(
      "New Event",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Create Image',
              style: TextStyle(
                //   fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20),
            ImgForm(),
            SizedBox(height: 30),
          ],
        ));
  }
}
