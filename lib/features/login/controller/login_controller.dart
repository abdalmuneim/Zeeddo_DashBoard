import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/constants/fields.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

class LoginController extends GetxController {
  final NetworkInfoImpl _networkInfoImpl = NetworkInfoImpl.instance;

  final userTCR = TextEditingController();
  final passTCR = TextEditingController();
  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  write() async {
    final box = GetStorage();
    await box.write(Fields.isLogging, true);
  }

  login() {
    if (_formKey.currentState!.validate()) {
      isLoading = true;
      update();
      Future.delayed(Duration(seconds: 4), () async {
        await write();
        Get.offAllNamed(AppRoutes.dashboard);
        ToastManager.showSuccess('success Data');
        isLoading = false;
        update();
      });
    } else {
      ToastManager.showSuccess('Check Data');
    }
  }

  _listenToNetwork() {
    _networkInfoImpl.listenToNetworkStream.onData((bool isConnected) {
      if (isConnected) {
      } else {
        ToastManager.showError(AppString.networkFailure);
      }
    });
  }

  @override
  void onInit() {
    _listenToNetwork();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
