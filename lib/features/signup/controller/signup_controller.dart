import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/constants/fields.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

class SignupController extends GetxController {
  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  final emailTCR = TextEditingController();
  write() async {
    final box = GetStorage();
    await box.write(Fields.isLogging, true);
  }

  register() {
    if (_formKey.currentState!.validate()) {
      if (emailTCR.text != "test@test.com") {
        isLoading = true;
        update();
        Future.delayed(Duration(seconds: 4), () async {
          await write();
          Get.offAllNamed(AppRoutes.dashboard);
          ToastManager.showSuccess('Welcome sir...');
          isLoading = false;
          update();
        });
      } else {
        isLoading = false;
        update();
        ToastManager.showSuccess('This user already exists, try logging in');
      }
    } else {
      ToastManager.showSuccess('Check Data');
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
