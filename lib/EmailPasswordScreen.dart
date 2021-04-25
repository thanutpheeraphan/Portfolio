import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/PhoneAndOtpScreen.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class EmailPasswordScreen extends StatefulWidget {
  @override
  _EmailPasswordScreenState createState() => _EmailPasswordScreenState();
}

class _EmailPasswordScreenState extends State<EmailPasswordScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  var isLoading = false;
  var isResend = false;
  var isLoginScreen = true;
  var isOTPScreen = false;
  var temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          children: [
            Container(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email Address'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter email address';
                  }
                },
              ),
            )),
            Container(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter password';
                  }
                },
              ),
            )),
            Container(
                margin: EdgeInsets.only(top: 40, bottom: 5),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: !isLoading
                        ? new ElevatedButton(
                            onPressed: () {
                              signInWithEmail(context,
                                  email: emailController.text,
                                  password: passwordController.text);
                              // if (!isLoading) {
                              //   displaySnackBar('Please wait...');
                              //   await login();
                              // }
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 15.0,
                                ),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                      "Sign In",
                                      textAlign: TextAlign.center,
                                    )),
                                  ],
                                )),
                          )
                        : CircularProgressIndicator(
                            backgroundColor: Theme.of(context).primaryColor,
                          )))
          ],
        ),
      ),
    );
  }

  login() async {
    {
      final UserCredential userCredential =
          (await _auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ));

      if (userCredential != null) {
        print(userCredential);
      }
      // context.read<AuthenticationService>().signIn(
      //     email: emailController.text.trim(),
      //     password: passwordController.text.trim());
      //     .then((value) => temp);
      //
      // print(temp);
      // Navigator.pushNamed(context, OtpScreen.routeName),
    }
  }

  displaySnackBar(text) {
    final snackBar = SnackBar(content: Text(text));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  Future<bool> signInWithEmail(BuildContext context,
      {@required String email, @required String password}) {
    return _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((result) {
      print("Welcome " + result.user.uid);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PhoneAndOtpScreen()));
      // Navigator.pop(context);
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //       // builder: (context) => MainPage(
      //       //   user: result.user,
      //       // )),
      //
      //       builder: (context) => TempPage()),
      // );
      return true;
    }).catchError((e) {
      print(e);
      switch (e.code) {
        case "ERROR_WRONG_PASSWORD":
          print("Wrong Password! Try again.");
          break;
        case "ERROR_INVALID_EMAIL":
          print("Email is not correct!, Try again");
          break;
        case "ERROR_USER_NOT_FOUND":
          print("User not found! Register first!");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => RegisterWithEmail()),
          // );
          break;
        case "ERROR_USER_DISABLED":
          print("User has been disabled!, Try again");
          break;
        case "ERROR_TOO_MANY_REQUESTS":
          print(
              "Sign in disabled due to too many requests from this user!, Try again");
          break;
        case "ERROR_OPERATION_NOT_ALLOWED":
          print(
              "Operation not allowed!, Please enable it in the firebase console");
          break;
        default:
          print("Unknown error");
      }
      return false;
    });
  }
}
