import '../controller/zeedoo_screen_sixteen_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenSixteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenSixteenController());
  }
}
