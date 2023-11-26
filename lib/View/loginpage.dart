import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        
          child: Container(
            width: width,
            height: height,
        child: Text("welcome to the login screen",style: TextStyle(color: Colors.white)),
        color: Colors.black,
      )),
    );
  }
}
