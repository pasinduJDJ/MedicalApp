import 'package:flutter/material.dart';
import 'package:medi_app/screen/CustomerNotificationScreen.dart';
import 'package:medi_app/screen/login.dart';
import 'package:medi_app/screen/CustomerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical App',
      theme: ThemeData(),
      home: login_Screen(),
    );
  }
}
