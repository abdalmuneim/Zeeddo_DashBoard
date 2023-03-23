import 'package:get/get.dart';
import 'package:shahrukh_s_application1/features/intro/controllers/intro_controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroController());
  }
}
