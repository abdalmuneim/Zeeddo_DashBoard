import '../controller/zeedoo_screen_twelve_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenTwelveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenTwelveController());
  }
}
