import 'package:get/get.dart';
import 'package:shahrukh_s_application1/features/staff/controller/staff_controller.dart';

class StaffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StaffController());
  }
}
