// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String phoneNumber, verificationId;
  String otp, authStatus = "";

  // Future<void> verifyPhoneNumber(BuildContext context) async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: phoneNumber,
  //     timeout: const Duration(seconds: 15),
  //     verificationCompleted: (AuthCredential authCredential) {
  //       setState(() {
  //         authStatus = "Your account is successfully verified";
  //       });
  //     },
  //     verificationFailed: (AuthException authException) {
  //       setState(() {
  //         authStatus = "Authentication failed";
  //       });
  //     },
  //     codeSent: (String verId, [int forceCodeResent]) {
  //       verificationId = verId;
  //       setState(() {
  //         authStatus = "OTP has been successfully send";
  //       });
  //       otpDialogBox(context).then((value) {});
  //     },
  //     codeAutoRetrievalTimeout: (String verId) {
  //       verificationId = verId;
  //       setState(() {
  //         authStatus = "TIMEOUT";
  //       });
  //     },
  //   );
  // }

  otpDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter your OTP'),
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                ),
                onChanged: (value) {
                  otp = value;
                },
              ),
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  // signIn(otp);
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          );
        });
  }

  // Future<void> signIn(String otp) async {
  //   await FirebaseAuth.instance
  //       .signInWithCredential(PhoneAuthProvider.getCredential(
  //     verificationId: verificationId,
  //     smsCode: otp,
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Phone number",
                  style: TextStyle(
                      fontFamily: 'Century Gothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromRGBO(9, 29, 103, 1)),
                ),
                SizedBox(height: 30),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "phone number",
                    hintText: "enter your phone number...",
                    filled: true,
                    fillColor: Color(0xFFFFECDF),
                    prefixIcon: Icon(Icons.phone_iphone),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color(0xFF757575),
                      ),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Color(0xFF757575),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                ),
                SizedBox(height: 30),
                RaisedButton(
                  // onPressed: () => phoneNumber == null ? null : verifyPhoneNumber(context),
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color.fromRGBO(255, 149, 24, 0.89),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 10),
                    child: Text(
                      'Request OTP',
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
                Text(
                  "Please enter the phone number followed by country code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Century Gothic',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
                SizedBox(height: 50),
                Text(
                  authStatus == "" ? "" : authStatus,
                  style: TextStyle(
                      color: authStatus.contains("fail") ||
                              authStatus.contains("TIMEOUT")
                          ? Colors.red
                          : Colors.green),
                )
              ],
            ),
        ),
      ),
    );
  }
}
