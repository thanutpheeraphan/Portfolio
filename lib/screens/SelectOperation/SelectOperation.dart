import 'package:flutter/material.dart';
import 'package:portfolio/craete_record/createRecord.dart';

import '../../RecordScreen.dart';

class SelectOperation extends StatelessWidget {
  final AppBar appBar = AppBar(
    iconTheme: IconThemeData(
      color: Color(0xFFF2A154),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFF314E52),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
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
                    'Create',
                    style: TextStyle(
                      //   fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(9, 29, 103, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecordScreen()),
                  )
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(255, 149, 24, 0.89),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 10, bottom: 10),
                  child: Text(
                    'View',
                    style: TextStyle(
                      //   fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(9, 29, 103, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
