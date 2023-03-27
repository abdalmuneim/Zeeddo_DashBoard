import 'package:flutter/material.dart';

class ColorConstant {
  static Color mainApp = fromHex('#1E619B');
  static Color scaffold = fromHex('#ebf3fb');
  static Color red = fromHex('#D5539E');
  static Color lightRed = fromHex('#808080');
  static Color redColor = fromHex('#969696');
  static Color buttonColor = fromHex('#1D9AAC');
  static Color greyColor = fromHex('#E6E6E6');
  static Color grey = fromHex('#999999');
  static Color labelTextColor = fromHex('#666666');
  static Color containerColor = fromHex('#CCCCCC');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
