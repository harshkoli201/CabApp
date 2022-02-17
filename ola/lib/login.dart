import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "LoginPage",
      home: MyloginPage(),
    ),
  );
}

class MyloginPage extends StatelessWidget {
  const MyloginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
    );
  }
}
