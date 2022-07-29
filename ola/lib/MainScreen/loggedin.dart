import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import 'mainscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged in'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Logout'),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }

  loginUI() {
    return Consumer<GoolgeSignInController>(
      builder: (context, model, child) {
        if (model.googleaccount != null) {
          return Center(
            child: loggedInUI(model),
          );
        } else {
          return MainScreen();
        }
      },
    );
  }

  loggedInUI(GoolgeSignInController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.googleaccount!.photoUrl ?? '').image,
          radius: 50,
        ),
        Text(model.googleaccount!.displayName ?? ''),
        Text(model.googleaccount!.email),
        ActionChip(
          label: Text('LogOut'),
          avatar: Icon(Icons.logout),
          onPressed: () {
            Provider.of<GoolgeSignInController>(context, listen: false).login();
          },
        )
      ],
    );
  }
}
