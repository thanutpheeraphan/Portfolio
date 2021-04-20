import 'package:flutter/material.dart';

class SignInHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // decoration: BoxDecoration(color: Colors.pink),
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Sign in',
            style: TextStyle(
                fontFamily: 'Century Gothic',
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Color.fromRGBO(9, 29, 103, 1)),
          ),
          SizedBox(height: 20),
          Text(
            'Sign in your username and password ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Century Gothic',
                // fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(9, 29, 103, 1)),
          )
        ],
      ),
    );
  }
}
