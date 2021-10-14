import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151241),
      body: Stack(
        children: [
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
                    Padding(padding: EdgeInsets.only(top: 150)),
                    Center(
                        child: Text(
                      "Congratulations",
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    )),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Center(
                        child: Text(
                      "Now you are registered",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Center(
                        child: Text(
                      "Get ready to play",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )),
                    Container(
                        height: 35,
                        margin: EdgeInsets.only(top: 120, left: 30, right: 30),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 4),
                                  blurRadius: 5.0)
                            ],
                            gradient: LinearGradient(
                                colors: [Color(0xFF0288D1), Color(0xFF18FFFF)]),
                            borderRadius: BorderRadius.circular(50.0)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),

                            minimumSize:
                                MaterialStateProperty.all(Size(1001, 20)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Start Now",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                )),
          ),
          Positioned(
              top: 235,
              right: 0,
              left: 0,
              child: Center(
                  child: Container(
                height: 98,
                width: 98,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF364470),
                    width: 2,
                  ),
                  color: Color(0xFF364470),
                  borderRadius: BorderRadius.circular(50),
                ),
              ))),
        ],
      ),
    );
  }
}
