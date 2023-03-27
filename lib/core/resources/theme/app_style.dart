import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

class AppStyle {
  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}

ThemeData get applicationTheme => ThemeData(
      useMaterial3: true,

      /// Main Color

      primaryColor: const Color(0xFF26A247),
      primaryColorLight: const Color(0xFF49A226),
      primaryColorDark: Colors.black,
      disabledColor: Colors.grey,

      /// CardViewTheme

      cardTheme: const CardTheme(),

      /// AppBar Theme

      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: ColorConstant.bluegray400,
          ),
          backgroundColor: ColorConstant.mainApp,
          titleTextStyle: TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white)),

      /// Button Theme

      buttonTheme: const ButtonThemeData(),

      /// Elevated Button Theme

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          minimumSize: const Size(double.infinity, 50),
          maximumSize: const Size(double.infinity, 50),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          backgroundColor: ColorConstant.buttonColor,
        ),
      ),

      /// Text Theme

      textTheme: const TextTheme(
        //

        headlineLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),

        headlineMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),

      /// Input Decoration Theme (text form filed)
    );
