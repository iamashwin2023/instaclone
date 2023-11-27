import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rvonlineshoppingdemo/Common/colors.dart';
import 'package:rvonlineshoppingdemo/Common/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Center(
                child: Text("welcome to the login screen",
                    style: TextStyle(color: Colors.black))),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: Container(
                child: Text(
                  "  $loginString",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      primaryColor.withOpacity(0.5),
                      Colors.transparent
                    ]),
                    border: const Border(
                        left: BorderSide(color: primaryColor, width: 5))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: primaryColor,
                    ),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: primaryColor,
                    ),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16)),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      forgetPassword,
                      style: TextStyle(color: Colors.black),
                    ))),
            Center(
              child: SizedBox(
                  height: height * 0.08,
                  width: width - 30,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.green)))),
                      onPressed: () {},
                      child: Text(
                        "Login to account",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
          ]),
        ),
        backgroundColor: Colors.white);
  }
}
