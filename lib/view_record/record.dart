import 'package:flutter/material.dart';
import 'package:portfolio/Form.dart';


class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * .15,
                // color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Academic Record",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              FormRecord(),
              SizedBox(height: 50),
              Container(
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
                      'Generate pdf link',
                      style: TextStyle(
                     //   fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromRGBO(9, 29, 103, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ));
  }
}
