import '../controller/zeedoo_signup_controller.dart';
import 'package:get/get.dart';

class ZeedooSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooSignupController());
  }
}
