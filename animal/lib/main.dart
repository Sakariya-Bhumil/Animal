// Flutter code for the Homepage
import 'package:flutter/material.dart';
import 'package:my_app/screen/Home_Page.dart';
import 'package:my_app/screen/admin/admin_second_page.dart';
import 'package:my_app/screen/admin/admin_home_page.dart';
import 'package:my_app/screen/final.dart';
import 'package:my_app/screen/general.dart';
import 'package:my_app/screen/login_form.dart';
import 'package:my_app/screen/payment.dart';
import 'package:my_app/signupgoogle_screen/signupgoogle_screen.dart';
// import 'package:my_app/screen/second_page.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: admin_home_page(),
    );
  }
}
 