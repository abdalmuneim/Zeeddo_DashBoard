import '../controller/zeedoo_screen_ten_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenTenController());
  }
}
