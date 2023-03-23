import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToastManager {
  /// SUCCESS NOTIFICATION
  static showSuccess(String message) {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    }
    Get.rawSnackbar(
      message: message.tr,
      barBlur: 5,
      maxWidth: Get.width,

      snackPosition: SnackPosition.BOTTOM,
      // backgroundColor: ColorManager.green.withOpacity(0.7),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    );
  }

  /// ERROR NOTIFICATION
  static showError(String message) {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    }
    Get.rawSnackbar(
      message: message,
      barBlur: 5,
      maxWidth: Get.width,

      snackPosition: SnackPosition.BOTTOM,
      // backgroundColor: ColorManager.red.withOpacity(0.7),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    );
  }
}
