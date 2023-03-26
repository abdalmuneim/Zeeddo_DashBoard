import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

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

  static void chooseDate(
    ValueChanged<DateTime?> onChangedDate, {
    DateTime? initialDate,
  }) async {
    print('_pickedDate');

    DateTime? _pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: initialDate ?? DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 7),
    );
    print(_pickedDate);

    if (_pickedDate != null) {
      onChangedDate(_pickedDate);
    }
  }

  static void chooseTime(
    ValueChanged<TimeOfDay?> onChangedTime, {
    TimeOfDay? initialTime,
  }) async {
    TimeOfDay? _pickedTime = await showTimePicker(
        context: Get.context!,
        // initialEntryMode: TimePickerEntryMode.input,
        initialTime: initialTime ?? TimeOfDay.fromDateTime(DateTime.now()));
    if (_pickedTime != null) {
      onChangedTime(_pickedTime);
    } else {}
  }

  static askPermission() async {
    /// complete Example for IOS
    /// https://github.com/Baseflow/flutter-permission-handler/blob/master/permission_handler/example/ios/Runner/Info.plist

    // You can request multiple permissions at once.
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.camera,
    ].request();

    /// permission storage
    if (statuses[Permission.storage]!.isDenied) {
      await Permission.storage.request().then((value) {
        if (!value.isGranted) askPermission();
      });

      /// permission camera
      if (statuses[Permission.camera]!.isDenied) {
        await Permission.photos.request().then((value) {
          if (!value.isGranted) askPermission();
        });
      }
      await determinePosition();
    }
  }

  static Future<Position?> determinePosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (await Permission.location.isPermanentlyDenied) {
        } else {
          final result = await Permission.location.request();

          serviceEnabled = result == PermissionStatus.granted;
        }
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return null;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        ToastManager.showError("please enable location");

        return null;
      }

      return await Geolocator.getCurrentPosition();
    } catch (error) {
      rethrow;
    }
  }
}
