import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    /// Main Color

    primaryColor: ColorsManger.primary,
    primaryColorLight: ColorsManger.lightPrimary,
    scaffoldBackgroundColor: ColorsManger.white,

    /// BottomNavigationBar theme

    /// CardViewTheme

    cardTheme: CardTheme(
        color: ColorsManger.white,
        shadowColor: ColorsManger.lightPrimary,
        elevation: AppSize.s8),

    /// drawer theme
    drawerTheme: const DrawerThemeData(),

    /// AppBar Theme

    appBarTheme: AppBarTheme(
        centerTitle: false,
        color: ColorsManger.lightBlack,
        elevation: AppSize.s0,
        shadowColor: ColorsManger.lightPrimary,
        titleTextStyle: TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: FontsSize.s16,
          fontWeight: FontWeightManger.semiBold,
          color: ColorsManger.white,
        ),
        iconTheme: IconThemeData(color: ColorsManger.white)),

    /// Button Theme

    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorsManger.lightPrimary,
      buttonColor: ColorsManger.primary,
      splashColor: ColorsManger.lightPrimary,
    ),

    /// Elevated Button Theme

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontFamily: FontConstants.fontFamily,
            fontSize: FontsSize.s14,
            fontWeight: FontWeightManger.bold,
            color: ColorsManger.white,
          ),
          alignment: Alignment.center,
          backgroundColor: ColorsManger.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s100))),
    ),

    /// Check box theme
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith(
        (states) => ColorsManger.primary,
      ),
    ),

    /// Text Theme

    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s36,
        fontWeight: FontWeightManger.semiBold,
        color: ColorsManger.white,
      ),
      headlineMedium: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.lightPrimary,
      ),
      headlineSmall: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s36,
        fontWeight: FontWeightManger.semiBold,
        color: ColorsManger.secondColor,
      ),

      // title
      titleLarge: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s36,
        fontWeight: FontWeightManger.semiBold,
        color: ColorsManger.black,
      ),
      titleMedium: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s16,
        fontWeight: FontWeightManger.bold,
        color: ColorsManger.primary,
      ),
      titleSmall: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.primary,
      ),

      labelLarge: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s16,
        fontWeight: FontWeightManger.bold,
        color: ColorsManger.white,
      ),
      labelMedium: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s16,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.white,
      ),
      labelSmall: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.white,
      ),

      bodyLarge: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s16,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.gray,
      ),
      bodySmall: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s12,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.error,
      ),

      displayLarge: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s22,
        fontWeight: FontWeightManger.semiBold,
        color: ColorsManger.black,
      ),
      displayMedium: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.bold,
        color: ColorsManger.secondColor,
      ),
      displaySmall: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.secondColor,
      ),
    ),

    /// Input Decoration Theme (text form filed)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.black,
      ),
      labelStyle: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.bold,
        color: ColorsManger.black,
      ),
      errorStyle: TextStyle(
        fontFamily: FontConstants.fontFamily,
        fontSize: FontsSize.s14,
        fontWeight: FontWeightManger.regular,
        color: ColorsManger.error,
      ),
      // enabledBorder: OutlineInputBorder(
      //   borderSide:
      //       BorderSide(color: ColorsManger.primary, width: AppSize.s1_5),
      //   borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color: ColorsManger.grey, width: AppSize.s1_5),
      //   borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      // ),
      // errorBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color: ColorsManger.error, width: AppSize.s1_5),
      //   borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderSide:
      //       BorderSide(color: ColorsManger.primary, width: AppSize.s1_5),
      //   borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      // ),
    ),
  );
}
