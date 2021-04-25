import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/createImg.dart';
import 'package:portfolio/craete_record/createRecord.dart';

class CreateForm extends StatefulWidget {
  @override
  _CreateFormState createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  // List typeList = ['table', 'image'];
  // String type;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      SizedBox(height: 20),
      Text(
        'Type',
        style: TextStyle(
          //   fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Center(
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateRecord()),
                )
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color.fromRGBO(255, 149, 24, 0.89),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 10, bottom: 10),
                child: Text(
                  'Table',
                  style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(9, 29, 103, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateImg()),
                )
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color.fromRGBO(255, 149, 24, 0.89),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 10, bottom: 10),
                child: Text(
                  'Image',
                  style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(9, 29, 103, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ])
        // Row(children: [
        //   Text('Type : '),
        //   DropdownButton(
        //     hint: Text(
        //       "type",
        //       textAlign: TextAlign.center,
        //     ),
        //     dropdownColor: Colors.white,
        //     underline: SizedBox(),
        //     value: type,
        //     onChanged: (newValue) {
        //       setState(() {
        //         type = newValue;
        //       });
        //     },
        //     items: typeList.map((valueItem) {
        //       return DropdownMenuItem(
        //         value: valueItem,
        //         child: Text(valueItem, textAlign: TextAlign.center),
        //       );
        //     }).toList(),
        //   ),
        // ]),
        );
  }
}
