import 'package:flutter/material.dart';
import 'package:portfolio/screens/Table.dart';

class TablePage extends StatelessWidget {
  final AppBar appBar = AppBar(
    iconTheme: IconThemeData(
      color: Color(0xFFF2A154),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFF314E52),
    title: Text(
      "New Event",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(height: 50),
          ShowRecord(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: RaisedButton(
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
          ),
        ],
      ),
    );
  }
}
