import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:mafia_education_app/app/themes/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mafia Education Application",
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
    );
  }
}
