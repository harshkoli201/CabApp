import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _LoginpageState();
}

class _LoginpageState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: SinCosineWaveClipper(),
            child: Container(
              height: 500,
              padding: const EdgeInsets.all(20),
              color: Colors.black,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 0, 0),
            child: Container(
              child: const Text(
                'WELCOME',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 120, 0, 0),
            child: Container(
              child: const Text(
                'RIDER',
                style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 210, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Image.asset("images/girl.png", height: 210),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
