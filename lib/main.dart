import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';
import 'package:portfolio/screens/Otp/otp_page.dart';
import 'package:portfolio/screens/SignIn/sign_in.dart';
import 'package:portfolio/screens/TablePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routes: routes,
      // initialRoute: SignInScreen.routeName,
      home:TablePage(),
    );
  }
}