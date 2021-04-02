import 'package:auth_tamil/constants.dart';
import 'package:auth_tamil/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:auth_tamil/login_screen.dart';
import 'colors.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String _email, _password, _name;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                      "   Register  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
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
                  child: TextFormField(
                    onSaved: (value) {
                      _name = value;
                    },
                    validator: (name) {
                      if (name.isEmpty) return "Please Enter Name";
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: primaryColor,
                        ),
                        labelText: "Enter Name",
                        labelStyle:
                            TextStyle(color: primaryColor, fontSize: 16.0)),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    onSaved: (value) {
                      _email = value;
                    },
                    validator: (email) {
                      if (email.isEmpty)
                        return "Please Enter Email";
                      else if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(email)) return "It's Not a valid Email";

                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: primaryColor,
                        ),
                        labelText: "Enter Email Address",
                        labelStyle:
                            TextStyle(color: primaryColor, fontSize: 16.0)),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextFormField(
                    onSaved: (value) {
                      _password = value;
                    },
                    validator: (password) {
                      if (password.isEmpty)
                        return "Please Enter Password";
                      else if (password.length < 8 || password.length > 15)
                        return "Password Length is 8-15 character";
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: primaryColor)),
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: primaryColor,
                        ),
                        labelText: "Enter Password",
                        labelStyle:
                            TextStyle(color: primaryColor, fontSize: 16.0)),
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Center(
                    child: SizedBox(
                        height: height * 0.08,
                        width: width - 30,
                        child: FlatButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          onPressed: () {
                            if (formKey.currentState.validate()) {
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                                if (_email == "test@gmail.com" &&
                                    _password == "root@123" &&
                                    _name == "Nilukshan") {
                                  FocusScope.of(context).unfocus();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                                } else {
                                  print("Invalid Login details");
                                }
                              }
                            }
                          },
                          child: Text(
                            "Register",
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
                      "Have you a account?",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text("Sign in",
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
        ),
      ),
    );
  }
}
