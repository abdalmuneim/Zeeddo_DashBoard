import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Utils {
  static void chooseColor(ValueChanged<Color?> onChangedColor,
      {Color? initialColor}) {
    showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: initialColor ?? const Color(0xff443a49),
            onColorChanged: (value) => onChangedColor(value),
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Got it'),
            onPressed: () => Get.back(),
          ),
        ],
      ),
      context: Get.context!,
    );
  }
}
