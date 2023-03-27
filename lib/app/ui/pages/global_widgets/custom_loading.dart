import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoading {
  static void show() {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (context) => Center(
        child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.white, size: 50),
      ),
    );
  }

  static void hide() {
    Get.back();
  }
}
