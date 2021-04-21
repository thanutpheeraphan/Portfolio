import 'package:flutter/material.dart';
import 'package:portfolio/add.dart';

class FormRecord extends StatefulWidget {
  @override
  _FormRecordState createState() => _FormRecordState();
}

class _FormRecordState extends State<FormRecord> {
  String school;
  String type;
  int count = 1;
  String choose;
  bool check = false;

  List schoolList = ['sjc', 'cu', 'kmitl', 'tu'];
  List typeList = ['report', 'award'];
  List chooseList = ['p1', 'p2', 'p3'];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color(0xfffFFC784),
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AddRecord(),
        
            ],
          ),
        ),
      ),
    );
  }
}
