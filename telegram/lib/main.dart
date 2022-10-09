import 'package:flutter/material.dart';
import 'package:flutter_application_3/tugas4/login.dart';
import 'tugas4/Telegram.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home : login(),
    );
  }
}

