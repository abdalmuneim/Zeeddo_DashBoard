import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shahrukh_s_application1/core/constants/fields.dart';
import 'package:shahrukh_s_application1/core/routes/app_routes.dart';

class IntroController extends GetxController {
  final box = GetStorage();
  write() async {
    await box.write(Fields.firstOpen, true);
  }

  skip() async {
    await write();
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
