import '../controller/coupon_controller.dart';
import 'package:get/get.dart';

class CouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CouponController());
  }
}
