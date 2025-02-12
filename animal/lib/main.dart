// Flutter code for the Homepage
import 'package:flutter/material.dart';
import 'package:my_app/screen/Home_Page.dart';
import 'package:my_app/screen/login_form.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: MentorSignupPage(),
    );
  }
}
 

