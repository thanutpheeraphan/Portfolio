import 'package:flutter/material.dart';
import 'package:portfolio/Model/QueryParameters.dart';
import 'Model/Record.dart';
import 'Model/School.dart';

class DropDownForm extends StatefulWidget {
  List<School> schools;
  int index;
  Function test;

  DropDownForm(this.index, this.schools, this.test);
  @override
  _DropDownFormState createState() =>
      _DropDownFormState(this.index, this.schools, this.test);
}

class _DropDownFormState extends State<DropDownForm> {
  final List<School> schools;
  School selectedSchool;
  Record selectedRecord;
  String selectedReport;
  int index;
  Function test;

  _DropDownFormState(this.index, this.schools, this.test);

  @override
  Widget build(BuildContext context) {
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
                          value: selectedSchool,
                          onChanged: (newValue) {
                            setState(() {
                              if (selectedSchool != null) {
                                selectedRecord = null;
                                selectedReport = null;
                              }
                              selectedSchool = newValue;
                            });
                          },
                          items: schools.map((school) {
                            return DropdownMenuItem(
                              value: school,
                              child: Text(
                                school.name,
                                textAlign: TextAlign.center,
                              ),
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
                  child: IgnorePointer(
                    ignoring: selectedSchool == null ? true : false,
                    child: Container(
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
                              "Record",
                              textAlign: TextAlign.center,
                            ),
                            dropdownColor: Colors.white,
                            underline: SizedBox(),
                            value: selectedRecord,
                            onChanged: (newValue) {
                              setState(() {
                                if (selectedRecord != null) {
                                  selectedReport = null;
                                }
                                selectedRecord = newValue;
                              });
                            },
                            items: selectedSchool == null
                                ? []
                                : selectedSchool.records.map((record) {
                                    return DropdownMenuItem(
                                      value: record,
                                      child: Text(record.name,
                                          textAlign: TextAlign.center),
                                    );
                                  }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IgnorePointer(
                    ignoring: selectedRecord == null ? true : false,
                    child: Container(
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
                              "Report",
                              textAlign: TextAlign.center,
                            ),
                            dropdownColor: Colors.white,
                            underline: SizedBox(),
                            value: selectedReport,
                            onChanged: (newValue) {
                              setState(() {
                                selectedReport = newValue;
                                test(
                                    index,
                                    QueryParameters(
                                      index,
                                      selectedSchool,
                                      selectedRecord,
                                      selectedReport,
                                    ));
                              });
                            },
                            items: selectedRecord == null
                                ? []
                                : selectedRecord.reports.map((report) {
                                    return DropdownMenuItem(
                                      value: report,
                                      child: Text(report,
                                          textAlign: TextAlign.center),
                                    );
                                  }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]))),
    );
  }
}
