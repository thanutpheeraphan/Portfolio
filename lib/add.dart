import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class AddRecord extends StatefulWidget {
  String countLine;
  AddRecord(String countLine) {
    this.countLine = countLine;
  }
  @override
  _AddRecordState createState() => _AddRecordState(this.countLine);
}

class _AddRecordState extends State<AddRecord> {
  String school;
  String type;
  String choose;
  bool check = false;
  String countLine;
  _AddRecordState(String countLine) {
    this.countLine = countLine;
  }

  List schoolList = ['sjc', 'cu', 'kmitl', 'tu'];
  List typeList = ['report', 'award'];
  List chooseList = [
    'p1',
    'p2',
    'p3',
    'p4',
    'p5',
    'p6',
    'm1',
    'm2',
    'm3',
    'm4',
    'm5',
    'm6',
    'y1',
    'y2',
    'y3',
    'y4'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(width: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: double.infinity,
                    // ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton(
                          hint: Text(
                            "school",
                            textAlign: TextAlign.center,
                          ),
                          dropdownColor: Colors.white,
                          underline: SizedBox(),
                          value: school,
                          onChanged: (newValue) {
                            setState(() {
                              school = newValue;
                            });
                          },
                          items: schoolList.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child:
                                  Text(valueItem, textAlign: TextAlign.center),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: double.infinity,
                    // ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton(
                          hint: Text(
                            "type",
                            textAlign: TextAlign.center,
                          ),
                          dropdownColor: Colors.white,
                          underline: SizedBox(),
                          value: type,
                          onChanged: (newValue) {
                            setState(() {
                              type = newValue;
                            });
                          },
                          items: typeList.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child:
                                  Text(valueItem, textAlign: TextAlign.center),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: double.infinity,
                    // ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: DropdownButton(
                          hint: Text(
                            "",
                            textAlign: TextAlign.center,
                          ),
                          dropdownColor: Colors.white,
                          underline: SizedBox(),
                          value: choose,
                          onChanged: (newValue) {
                            setState(() {
                              choose = newValue;
                            });
                          },
                          items: chooseList.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Row(
                                children: [
                                  Text(valueItem, textAlign: TextAlign.center),
                                  // Checkbox(
                                  //     value: check,
                                  //     onChanged: (bool value) {
                                  //       setState(() {
                                  //         check = value;
                                  //       });
                                  //     }
                                  //     ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ]))),
    );

    // });
  }
}
