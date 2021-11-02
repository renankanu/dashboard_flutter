import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';

class BaseTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: BaseColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(Get.context!).textTheme)
          .apply(bodyColor: Colors.white),
      canvasColor: BaseColors.secondaryColor,
    );
  }
}
