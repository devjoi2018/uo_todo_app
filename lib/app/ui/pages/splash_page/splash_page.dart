import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/controllers/splash_controller.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              cacheHeight: 113,
              cacheWidth: 113,
            ),
            const Text(
              'UpTodo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
