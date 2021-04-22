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

  List<DropdownMenuItem<String>> _dropDownMenuTypes;
  List<DropdownMenuItem<String>> _dropDownMenuClass;
  String _currentType;
  String _currentClass;

  List schoolList = ['sjc', 'cu', 'kmitl', 'tu'];
  List typeList = ['report', 'award'];
  List gradeList = [
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
   List cerList = [
    'swimming',
    'running',
    'school council',
    'good leader',
    'academic excellence',
    'basketball',
    'volleyball'

  ];

  
  @override
  void initState() {
    _dropDownMenuClass = getDropDownMenuClass();
    _dropDownMenuTypes = [];

    super.initState();
  }

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
                          value: _currentClass,
                          items: _dropDownMenuClass,
                          onChanged: changedDropDownClass,
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
                          value: _currentType,
                          items: _dropDownMenuTypes,
                          onChanged: changedDropDownType,
                        
                        ),
                      ),
                    ),
                  ),
                ),
      ]))),
    );


    // });
  }
  List<DropdownMenuItem<String>> getDropDownMenuClass() {
    List<DropdownMenuItem<String>> type = List();
    for (String statelist in typeList) {
      type.add(DropdownMenuItem(value: statelist, child: Text(statelist)));
    }
    return type;
  }

  List<DropdownMenuItem<String>> getDropDownMenuGrade() {
    List<DropdownMenuItem<String>> grade = List();
    for (String gradelist in gradeList) {
      grade.add(DropdownMenuItem(value: gradelist, child: Text(gradelist)));
    }
    return grade;
  }

  List<DropdownMenuItem<String>> getDropDownMenuCertificate() {
    List<DropdownMenuItem<String>> cert = List();
    for (String cerlist in cerList) {
      cert.add(DropdownMenuItem(value: cerlist, child: Text(cerlist)));
    }
    return cert;
  }

  void changedDropDownClass(String selectedClass) {
    setState(() {
      _currentType = null;
      _dropDownMenuTypes.clear();

      _currentClass = selectedClass;

      if (selectedClass.toString() == "report") {
        _dropDownMenuTypes = getDropDownMenuGrade();
      } else if (selectedClass.toString() == "award") {
        _dropDownMenuTypes = getDropDownMenuCertificate();
      }
    });
  }

  void changedDropDownType(String selectedType) {
    setState(() {
      _currentType = selectedType;
    });
  }

}

