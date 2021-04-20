import 'package:flutter/material.dart';
import 'package:portfolio/widgets/SignIn_widgets/SignInBody.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInBody(),
    );
  }
}
