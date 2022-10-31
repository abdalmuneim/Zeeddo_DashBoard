import 'dart:ui';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

/// Regular Font Style

TextStyle getRegularStyle({double fontSize = FontsSize.s14, required color}) {
  return _getTextStyle(fontSize, FontWeightManger.regular, color);
}

/// Medium Font Style

TextStyle getMediumStyle({double fontSize = FontsSize.s16, required color}) {
  return _getTextStyle(fontSize, FontWeightManger.medium, color);
}

/// SemiBold Font Style

TextStyle getSemiBoldStyle({double fontSize = FontsSize.s36, required color}) {
  return _getTextStyle(fontSize, FontWeightManger.semiBold, color);
}

/// Bold Font Style

TextStyle getBoldStyle({double fontSize = FontsSize.s14, required color}) {
  return _getTextStyle(fontSize, FontWeightManger.bold, color);
}
