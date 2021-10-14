import 'package:flutter/material.dart';
import 'package:flutter_application_/provider/google_sign_in.dart';
import 'package:flutter_application_/views/SignUp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  bool isMale = true;
  bool isSignupScreen = true;
  bool isrememberme = false;
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151241),
      body: Stack(
        children: [
          Positioned(
              bottom: 193,
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
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF878993)),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xFF5C6BC0)),
                      ),
                    ),
                  ],
                ),
              ))),
          Positioned(
              top: 200,
              child: Container(
                height: 420,
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
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFF878993)),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
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
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                      // fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            Padding(padding: EdgeInsets.only(bottom: 20)),
                            Text(
                              "Or by social account",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(padding: EdgeInsets.only(bottom: 25)),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(right: 95)),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text('f'),
                                    style: ElevatedButton.styleFrom(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20,
                                            fontFamily: 'RobotoMono'),
                                        primary: Color(0xff39579A),
                                        onPrimary: Colors.white70,
                                        fixedSize: Size(14, 38),
                                        shape: CircleBorder())),
                                ElevatedButton(
                                    onPressed: () {
                                      final provider = Provider.of<Google>(
                                          context,
                                          listen: false);
                                      provider.googleLogin();
                                    },
                                    child: Text('G+'),
                                    style: ElevatedButton.styleFrom(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 13,
                                            fontFamily: 'sans-serif'),
                                        primary: Color(0xffDF4A32),
                                        onPrimary: Colors.white70,
                                        fixedSize: Size(14, 38),
                                        shape: CircleBorder())),
                              ],
                            ),
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
