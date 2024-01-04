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
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 300,
                  ),
                  const Center(
                      child: Text("welcome to the login screen",
                          style: TextStyle(color: Colors.black))),
                  Container(
                      height: height * 0.9,
                      width: width < 500
                          ? width
                          : width < 1050
                              ? width * 0.8
                              : width * 0.4,
                      child: Column(
                        children: [
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
                                      left: BorderSide(
                                          color: primaryColor, width: 5))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: primaryColor,
                                  ),
                                  labelText: "EMAIL ADDRESS",
                                  labelStyle: TextStyle(
                                      color: primaryColor, fontSize: 16)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: primaryColor)),
                                  prefixIcon: Icon(
                                    Icons.lock_open,
                                    color: primaryColor,
                                  ),
                                  labelText: "PASSWORD",
                                  labelStyle: TextStyle(
                                      color: primaryColor, fontSize: 16)),
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    forgetPassword,
                                    style: TextStyle(color: Colors.grey),
                                  ))),
                          Center(
                            child: SizedBox(
                                height: height * 0.08,
                                width: width - 30,
                                child: TextButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                primaryColor),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.green)))),
                                    onPressed: () {},
                                    child: Text(
                                      "Login to account",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22),
                                    ))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have a account"),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Create Account",
                                    style: TextStyle(
                                        color: primaryColor, fontSize: 16),
                                  ))
                            ],
                          )
                        ],
                      )),
                ]),
          ),
        ),
        backgroundColor: Colors.white);
  }
}
