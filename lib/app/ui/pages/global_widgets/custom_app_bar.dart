import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

class CustomAppBar extends GetView with PreferredSizeWidget {
  final Function()? onBack;

  CustomAppBar({Key? key, this.onBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: onBack,
      ),
      backgroundColor: CustomColor.primaryColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
