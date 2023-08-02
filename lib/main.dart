import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/themes/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mafia Education Application",
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
