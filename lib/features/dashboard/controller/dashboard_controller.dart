import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';

import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class DashboardController extends GetxController {
  final NetworkInfoImpl _networkInfoImpl = NetworkInfoImpl.instance;

  _listenToNetwork() {
    _networkInfoImpl.listenToNetworkStream.onData((bool isConnected) {
      if (isConnected) {
      } else {
        ToastManager.showError(AppString.networkFailure);
      }
    });
  }

  @override
  void onReady() {
    Utils.askPermission();
    _listenToNetwork();

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
