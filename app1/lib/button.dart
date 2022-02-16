import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Mybutton(),
        ),
      ),
    ),
  );
}

class Mybutton extends StatelessWidget {
  const Mybutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('My Button has been Clicked');
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.blue[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
