import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uptodo_app/app/bindings/splash_binding.dart';
import 'package:uptodo_app/app/routes/app_pages.dart';
import 'package:uptodo_app/app/translations/app_translation.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashPage,
      defaultTransition: Transition.fade,
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      theme: ThemeData(fontFamily: 'Lato'),
      translationsKeys: AppTranslation.translations,
    ),
  );
}
