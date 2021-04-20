import 'package:flutter/material.dart';

import 'SignForm.dart';
import 'SignInHeader.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SignInHeader(),
              SizedBox(height: 20),
              // Image.asset('assets/images/portfolio.png', fit: BoxFit.cover),
              SizedBox(height: 20),
              SignForm(),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () => {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color.fromRGBO(255, 149, 24, 0.89),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 50, right: 50, top: 10, bottom: 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Century Gothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(9, 29, 103, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          )),
        ),
      ),
    );
  }
}
