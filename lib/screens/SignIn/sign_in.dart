import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/Otp/otp_page.dart';
import 'package:portfolio/widgets/SignIn_widgets/SignInBody.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return OtpScreen();
    }

    return Scaffold(
      body: SignInBody(),
    );
  }
}
