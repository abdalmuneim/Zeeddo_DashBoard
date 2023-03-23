import '../controller/zeedoo_screen_thirteen_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenThirteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenThirteenController());
  }
}
