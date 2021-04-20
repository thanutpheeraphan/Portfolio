import 'package:flutter/widgets.dart';
import 'package:portfolio/screens/Otp/otp_page.dart';
import 'package:portfolio/screens/SignIn/sign_in.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),

};
