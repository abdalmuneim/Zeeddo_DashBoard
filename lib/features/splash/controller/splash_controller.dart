import 'dart:async';

import 'package:get_storage/get_storage.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/constants/fields.dart';

class SplashController extends GetxController {
  final NetworkInfoImpl _networkInfoImpl = NetworkInfoImpl.instance;

  Future<void> _startTimer() async {
    _networkInfoImpl.initializeNetworkStream();
    Timer(
      const Duration(seconds: 3),
      () async => await navigator(),
    );
  }

  navigator() async {
    await fistOpen()
        ? await isLogging()
            ? Get.offAllNamed(AppRoutes.dashboard)
            : Get.offAllNamed(AppRoutes.loginScreen)
        : Get.offAllNamed(AppRoutes.intro);
  }

  final box = GetStorage();
  Future<bool> fistOpen() async {
    return await box.read(Fields.firstOpen) ?? false;
  }

  Future<bool> isLogging() async {
    return await box.read(Fields.isLogging) ?? false;
  }

  @override
  void onInit() {
    _startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
