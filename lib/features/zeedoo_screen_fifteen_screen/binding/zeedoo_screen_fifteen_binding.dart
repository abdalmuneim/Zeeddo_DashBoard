import '../controller/zeedoo_screen_fifteen_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenFifteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenFifteenController());
  }
}
