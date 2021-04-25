import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/create_form.dart';

class CreateRecord extends StatelessWidget {
  final AppBar appBar = AppBar(
    iconTheme: IconThemeData(
      color: Color(0xFFF2A154),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFF314E52),
  );
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: appBar,
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height * .15,
                    // color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create Record",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CreateForm()
                ],
              ),
            ),
          ),
        ));
  }
}
