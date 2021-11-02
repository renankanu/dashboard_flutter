import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';

class BaseTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: BaseColors.primaryColor,
      scaffoldBackgroundColor: BaseColors.bgColor,
      textTheme: GoogleFonts.poppinsTextTheme()
          .apply(
            bodyColor: Colors.white,
            displayColor: Colors.red,
          )
          .copyWith(
            headline2: GoogleFonts.rubik(
              fontSize: 60,
              fontWeight: FontWeight.w300,
            ),
          ),
      canvasColor: BaseColors.secondaryColor,
    );
  }
}
