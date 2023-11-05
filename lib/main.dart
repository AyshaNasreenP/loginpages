import 'package:flutter/material.dart';
import 'package:login/Bottomnav.dart';
import 'package:login/log.dart';
import 'package:login/login.dart';
import 'package:login/sample.dart';

import 'Correction.dart';

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
      title: 'Flutter Demo',


      home:login()
    );
    }


}

