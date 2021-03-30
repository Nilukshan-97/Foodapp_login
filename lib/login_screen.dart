import 'package:auth_tamil/constants.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgImage,
                  height: height * 0.30,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.30,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.9],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.white,
                          ])),
                  //color: Colors.red.withOpacity(0.3),
                ),
              ],
            ),
            Center(
              child: Text(appName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Center(
                child: Text(slogan,
                    style: TextStyle(fontSize: 18.0, color: Colors.grey))),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Text(
                  "   $loginStr  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      primaryColor.withOpacity(0.4),
                      primaryColor.withOpacity(0.1),
                    ]),
                    border: Border(
                        left: BorderSide(color: primaryColor, width: 5.0))),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: primaryColor,
                    ),
                    labelText: "Enter Email Address",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16.0)),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: primaryColor,
                    ),
                    labelText: "Enter Password",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16.0)),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text(forget),
              ),
            ),
            Center(
                child: SizedBox(
                    height: height * 0.08,
                    width: width - 30,
                    child: FlatButton(
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      onPressed: () {},
                      child: Text(
                        "Login to Account",
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ))),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15.0),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Create Account",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
