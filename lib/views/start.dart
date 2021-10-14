import 'package:flutter_application_/controllers/onboarding_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_/provider/google_sign_in.dart';
import 'package:flutter_application_/views/LoginPage.dart';
import 'package:flutter_application_/views/register.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'SignUp.dart';

class Start extends StatelessWidget {
  void _loginwithfacebook() async {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFF151241)),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              bottom: 220,
              left: 50,
              child: ElevatedButton(
                onPressed: () {
                  _loginwithfacebook();
                },
                child: Text('Sign in with Facebook'),
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                    primary: Color(0xff39579A),
                    onPrimary: Colors.white70,
                    fixedSize: Size(320, 43),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              )),
          Positioned(
              bottom: 160,
              left: 50,
              child: ElevatedButton(
                onPressed: () {
                  final provider = Provider.of<Google>(context, listen: false);
                  provider.googleLogin();
                },
                child: Text('Sign in with Google'),
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                    primary: Color(0xffDF4A32),
                    onPrimary: Colors.white70,
                    fixedSize: Size(320, 43),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              )),
          Positioned(
              bottom: 100,
              left: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                    primary: Color(0xFF151241),
                    onPrimary: Colors.white,
                    fixedSize: Size(320, 43),
                    side: BorderSide(color: Colors.white60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              )),
          Positioned(
              bottom: 40,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              )),
          Positioned(
              bottom: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'Create account?',
                  style: TextStyle(
                    color: Colors.indigo[500],
                    decoration: TextDecoration.underline,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
