import 'package:flutter/material.dart';
import 'package:flutter_application_/views/LoginPage.dart';
import 'package:flutter_application_/views/SignUp.dart';
import 'package:flutter_application_/views/register.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  @override
  _MySignUpState createState() => _MySignUpState();
}

class _MySignUpState extends State<SignUp> {
  bool isPassword = true;

  bool value = false;

  Widget buildCheckbox() => Checkbox(
      value: value,
      onChanged: (value) {
        setState(() {
          this.value = value!;
        });
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151241),
      body: Stack(
        children: [
          Positioned(
              bottom: 163,
              right: 0,
              left: 0,
              child: Center(
                  child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 100,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF2D305C),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                      )
                    ]),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40, top: 40)),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white70),
                        )),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF878993)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Color(0xFF5C6BC0)),
                      ),
                    ),
                  ],
                ),
              ))),
          Positioned(
              top: 200,
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF2D365C),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 80, left: 30, right: 30),
                        child: Column(
                          children: [
                            TextField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                fillColor: Color(0xFF233256),
                                filled: true,
                                prefixIcon: Icon(
                                  FontAwesomeIcons.user,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2D365C)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "User Name",
                                hintStyle: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(bottom: 15)),
                            TextField(
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                fillColor: Color(0xFF233256),
                                filled: true,
                                prefixIcon: Icon(
                                  FontAwesomeIcons.envelope,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2D365C)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(bottom: 15)),
                            TextField(
                              obscureText: isPassword,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                fillColor: Color(0xFF233256),
                                filled: true,
                                prefixIcon: Icon(
                                  FontAwesomeIcons.lock,
                                  size: 18,
                                  color: Colors.white70,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2D365C)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(padding: const EdgeInsets.only(bottom: 15)),
                            TextField(
                              obscureText: isPassword,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                fillColor: Color(0xFF233256),
                                filled: true,
                                prefixIcon: Icon(
                                  FontAwesomeIcons.lock,
                                  size: 18,
                                  color: Colors.white70,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2D365C)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            Row(
                              children: [
                                buildCheckbox(),
                                Text(
                                  "I agree to sports betting Terms and services,\nPrivacy and content Privacy",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                            Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0, 4),
                                          blurRadius: 5.0)
                                    ],
                                    gradient: LinearGradient(colors: [
                                      Color(0xFF03A9F4),
                                      Color(0xFF18FFFF)
                                    ]),
                                    borderRadius: BorderRadius.circular(35.0)),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(35.0),
                                      ),
                                    ),

                                    minimumSize: MaterialStateProperty.all(
                                        Size(1001, 20)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                          ],
                        ))
                  ],
                ),
              )),
          Positioned(
              top: 155,
              right: 0,
              left: 0,
              child: Center(
                  child: Container(
                height: 98,
                width: 98,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF151241),
                    width: 2,
                  ),
                  color: Color(0xFF2D365C),
                  borderRadius: BorderRadius.circular(50),
                ),
              ))),
        ],
      ),
    );
  }
}
