import 'package:flutter/material.dart';
import 'package:portfolio/screens/Otp/otp_page.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInHeader(),
              SizedBox(height: 30),
              SignForm(),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, OtpScreen.routeName),
                },
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
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
