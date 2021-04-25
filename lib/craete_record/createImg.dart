import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/img.dart';

class CreateImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
  
      Column(
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
      )
    );
  }
}