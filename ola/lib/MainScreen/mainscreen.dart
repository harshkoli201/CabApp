import 'package:app1/MainScreen/loggedin.dart';
import 'package:app1/MainScreen/loginController.dart';
import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final controller = Get.put(LoginController());
  MainPage({Key? key}) : super(key: key);

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
          ),
          Obx(() {
            if (controller.googleAccount.value == null)
              return Padding(
                padding: EdgeInsets.fromLTRB(50, 650, 50, 0),
                child: LoginButton(),
              );
            else
              return Logged();
          })
        ],
      ),
    );
  }

  ElevatedButton LoginButton() {
    return ElevatedButton.icon(
      onPressed: () {
        controller.login();
      },
      label: const Text(
        'SignUp with Google',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 0, 0, 0),
          onPrimary: const Color.fromARGB(255, 255, 234, 0),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0))),
      icon: const FaIcon(
        FontAwesomeIcons.google,
        color: Colors.yellow,
      ),
    );
  }
}
