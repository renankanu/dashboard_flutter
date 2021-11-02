import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/theme/base_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: BaseTheme.lightTheme,
    ),
  );
}
