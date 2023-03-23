import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

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
    _listenToNetwork();

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
