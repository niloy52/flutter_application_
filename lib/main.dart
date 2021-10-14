import 'package:flutter/material.dart';
import 'package:flutter_application_/provider/google_sign_in.dart';
import 'package:flutter_application_/views/LoginPage.dart';
import 'package:flutter_application_/views/SignUp.dart';
import 'package:flutter_application_/views/register.dart';
// ignore: unused_import
import 'package:flutter_application_/views/start.dart';
// ignore: unused_import
import 'package:flutter_application_/views/onboardng_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => Google(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          // ignore: missing_required_param
          home: OnboardingPage(),
        ),
      );
}
