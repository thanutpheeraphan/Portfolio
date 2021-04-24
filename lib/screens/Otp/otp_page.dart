import 'package:flutter/material.dart';
import 'package:portfolio/widgets/SendOtp_widgets/SendOtp.dart';
import 'package:portfolio/widgets/SendOtp_widgets/otp.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SendOtp(),
    );
  }
}
