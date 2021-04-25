import 'package:flutter/material.dart';

class ImgForm extends StatefulWidget {
  @override
  _ImgFormState createState() => _ImgFormState();
}

class _ImgFormState extends State<ImgForm> {
  String name;
  String type;
  int id;
  String url;
  TextEditingController nameController = new TextEditingController();
  TextEditingController typeController = new TextEditingController();
  TextEditingController urlController = new TextEditingController();
  TextEditingController idController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Create Image',
            style: TextStyle(
              //   fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name'),
              SizedBox(width: 30),
              Container(
                width: 300,
                height: 30,
                child: TextFormField(
                  controller: nameController,
                  obscureText: true,
                  onSaved: (newValue) => name = newValue,
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
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Type'),
              SizedBox(width: 30),
              Container(
                width: 300,
                height: 30,
                child: TextFormField(
                  controller: typeController,
                  obscureText: true,
                  onSaved: (newValue) => name = newValue,
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
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Student ID'),
              SizedBox(width: 30),
              Container(
                width: 300,
                height: 30,
                child: TextFormField(
                  controller: idController,
                  obscureText: true,
                  onSaved: (newValue) => name = newValue,
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
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Image url'),
              SizedBox(width: 30),
              Container(
                width: 300,
                height: 30,
                child: TextFormField(
                  controller: urlController,
                  obscureText: true,
                  onSaved: (newValue) => name = newValue,
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
          ),
          SizedBox(height:30),
           Align(
             alignment: Alignment.bottomRight,
                        child: RaisedButton(
                onPressed: () => {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(255, 149, 24, 0.89),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 10, bottom: 10),
                  child: Text(
                    'submit',
                    style: TextStyle(
                      //   fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(9, 29, 103, 1),
                    ),
                  ),
                ),
              ),
           ),
        ],
      ),
      
    );
  }
}
