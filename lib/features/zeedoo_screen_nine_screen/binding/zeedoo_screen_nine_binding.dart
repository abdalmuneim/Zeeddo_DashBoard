import '../controller/zeedoo_screen_nine_controller.dart';
import 'package:get/get.dart';

class ZeedooScreenNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ZeedooScreenNineController());
  }
}
