import '../controller/branding_controller.dart';
import 'package:get/get.dart';

class BrandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BrandingController());
  }
}
