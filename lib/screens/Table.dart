import 'package:flutter/material.dart';
import 'package:portfolio/add.dart';

TextEditingController nameController = TextEditingController();
TextEditingController typeController = new TextEditingController();
TextEditingController idController = new TextEditingController();
TextEditingController gradeController = new TextEditingController();
TextEditingController subjectController = new TextEditingController();
TextEditingController creditController = new TextEditingController();

class ShowRecord extends StatefulWidget{
  @override
    ShowRecordState createState() => ShowRecordState();
}

class ShowRecordState extends State<ShowRecord>{
  List cerList = [
    'swimming',
    'running',
    'school council',
    'good leader',
    'academic excellence',
    'basketball',
    'volleyball'

  ];
  String name;
  String id;
  String grade;
  String subject;
  String credit;
  String type;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
        child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(20),
            child: Container(
            constraints: BoxConstraints(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
            ),
            decoration: BoxDecoration(
            color: Color(0xfffFFC784),
            borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
            children: [
                SizedBox(height: 20),
                Rec("Name",name, nameController),
                SizedBox(height: 20),
                Container(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton(
                        hint: Text(
                          "Type",
                          textAlign: TextAlign.center,
                        ),
                        underline: SizedBox(),
                        value: type,
                        onChanged: (newValue) {
                          setState(() {
                            type = newValue;
                          });
                        },
                        items: cerList.map((valueItem) {
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
                SizedBox(height: 20),
                Rec("Student id",id,idController),
                SizedBox(height: 20),
                Rec("Grade",grade,gradeController),
                SizedBox(height: 20),
                Rec("Subject",subject, subjectController),
                SizedBox(height: 20),
                Rec("Credit",credit ,creditController),
                SizedBox(height: 20),
              ],
            ),
          ),
       ),
      ],
      ),
    );
  }
}
class Rec extends StatelessWidget {
  final String title;
  String value;
  final TextEditingController controller;

  Rec(this.title, this.value, this.controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 100,
            child: Text(title, textAlign: TextAlign.right)),
        SizedBox(width: 30),
        Container(
          width: 250,
          height: 30,
          child: TextFormField(
            controller: controller,
            onSaved: (newValue) => value = newValue,
            onChanged: (value) {},
            validator: (value) {},
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              EdgeInsets.symmetric(horizontal: 42, vertical: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
