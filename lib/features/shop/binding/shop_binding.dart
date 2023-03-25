import '../controller/shop_controller.dart';
import 'package:get/get.dart';

class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopController());
  }
}
