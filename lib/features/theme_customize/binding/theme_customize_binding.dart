import '../controller/theme_customize_controller.dart';
import 'package:get/get.dart';

class ThemeCustomizeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThemeCustomizeController());
  }
}
