import 'package:auth_app/signup.dart';
import 'package:auth_app/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'homepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// First put json file in android and json
// use gradle in android plugin
// yaml for firebase

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Loogin',
      theme: ThemeData(),
      home: LoginScreen(),
      routes: {
        '/home': (BuildContext context)=> HomeScreen(),
        '/signin': (BuildContext context)=> LoginScreen(),
        '/signup': (BuildContext context)=> SignUp(),
      },
    );
  }
}