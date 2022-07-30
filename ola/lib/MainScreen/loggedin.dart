import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'loginController.dart';

class Logged extends StatelessWidget {
  final controller = Get.put(LoginController());
  Logged({Key? key}) : super(key: key);

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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage:
                Image.network(controller.googleAccount.value?.photoUrl ?? '')
                    .image,
            radius: 100,
          ),
          Text(
            controller.googleAccount.value?.displayName ?? '',
            style: Get.textTheme.headline1,
          ),
          Text(
            controller.googleAccount.value?.displayName ?? '',
            style: Get.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
