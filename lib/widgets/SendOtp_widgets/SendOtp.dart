import 'package:flutter/material.dart';

class SendOtp extends StatefulWidget {
  @override
  _SendOtpState createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
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
                "OTP number",
                style: TextStyle(
                    fontFamily: 'Century Gothic',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Color.fromRGBO(9, 29, 103, 1)),
              ),
              SizedBox(height: 50),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "otp number",
                  hintText: "enter your otp...",
                  filled: true,
                  fillColor: Color(0xFFFFECDF),
                  prefixIcon: Icon(Icons.lock_outlined),
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
                // onChanged: (value) {
                //   phoneNumber = value;
                // },
              ),
              SizedBox(height: 30),
              // RaisedButton(
              //   onPressed: () => {},
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30)),
              //   color: Color.fromRGBO(255, 149, 24, 0.89),
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //         left: 50, right: 50, top: 10, bottom: 10),
              //     child: Text(
              //       'Request OTP',
              //       style: TextStyle(
              //         fontFamily: 'Century Gothic',
              //         fontWeight: FontWeight.bold,
              //         fontSize: 22,
              //         color: Color.fromRGBO(9, 29, 103, 1),
              //       ),
              //     ),
              //   ),
              // ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Request OTP',
                  style: TextStyle(
                    fontFamily: 'Century Gothic',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(9, 29, 103, 1),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                alignment: Alignment.bottomRight,
                child: RaisedButton(
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.lightGreen,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        fontFamily: 'Century Gothic',
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color.fromRGBO(9, 29, 103, 1),
                      ),
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
