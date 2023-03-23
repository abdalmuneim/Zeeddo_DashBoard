import 'package:get/get.dart';
import 'package:shahrukh_s_application1/features/loyalty_program/controller/loyalty_program_controller.dart';

class LoyaltyProgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoyaltyProgramController());
  }
}
