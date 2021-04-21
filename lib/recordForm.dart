import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecordForm extends StatefulWidget {
  @override
  _RecordFormState createState() => _RecordFormState();
}

class _RecordFormState extends State<RecordForm> {
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
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        padding: EdgeInsets.only(right: 5),
        margin: EdgeInsets.symmetric(vertical: 5),
        constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
        ),
        decoration: BoxDecoration(
          color: Color(0xfffFFC784),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ),
                  
                     Row(
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          Row(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    count += 1;
                                  });
                                },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                                // padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                            ],
                          ),
                          //   ],
                          // ),
                          Expanded(
                            child: SizedBox(
                              child: ListView.separated(
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                  shrinkWrap: true,
                                  itemCount: count,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        // Spacer(),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxHeight: double.infinity,
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 30, right: 30),
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
                                                items:
                                                    schoolList.map((valueItem) {
                                                  return DropdownMenuItem(
                                                    value: valueItem,
                                                    child: Text(valueItem,
                                                        textAlign:
                                                            TextAlign.center),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        //  SizedBox(width:40),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxHeight: double.infinity,
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
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
                                                items:
                                                    typeList.map((valueItem) {
                                                  return DropdownMenuItem(
                                                    value: valueItem,
                                                    child: Text(valueItem,
                                                        textAlign:
                                                            TextAlign.center),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        // SizedBox(width:40),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxHeight: double.infinity,
                                          ),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30),
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
                                                items:
                                                    chooseList.map((valueItem) {
                                                  return DropdownMenuItem(
                                                    value: valueItem,
                                                    child: Row(
                                                      children: [
                                                        Text(valueItem,
                                                            textAlign: TextAlign
                                                                .center),
                                                        Checkbox(
                                                            value: check,
                                                            onChanged:
                                                                (bool value) {
                                                              setState(() {
                                                                check = value;
                                                              });
                                                            }),
                                                      ],
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Spacer(),
                                        //   SizedBox(width:40),
                                      ],
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                 

                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
