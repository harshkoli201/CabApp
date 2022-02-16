import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Tutorial",
      home: MyAppBar(),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu Bar",
          onPressed: null,
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: "Search",
          ),
        ],
      ),
      body: const Center(child: Text("Hello Login Page")),
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "add",
        onPressed: null,
      ),
    );
  }
}
