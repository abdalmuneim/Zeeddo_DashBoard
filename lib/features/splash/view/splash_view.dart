import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/features/splash/controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (SplashController controller) {
        return Scaffold(
          body: SvgPicture.asset(
            ImageConstant.imgClippathgroup,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        );
      },
    );
  }
}
