import 'package:app1/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LoginPage",
      home: Splashscreen(),
    ),
  );
}
