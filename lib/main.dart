import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:j5pos/app/utils/default/theme.dart';
import 'package:j5pos/app/utils/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      theme: j5Theme.setupTheme,
      home: SplashPage(),
    ),
  );
}
