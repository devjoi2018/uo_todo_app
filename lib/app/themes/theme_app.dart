import 'package:flutter/material.dart';
import 'package:uptodo_app/app/utils/custom_color.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: CustomColor.primaryColor,
  scaffoldBackgroundColor: CustomColor.primaryColor,
  colorScheme: const ColorScheme.dark(
    primary: CustomColor.primaryColor,
    secondary: CustomColor.secondaryColor,
  ),
);
