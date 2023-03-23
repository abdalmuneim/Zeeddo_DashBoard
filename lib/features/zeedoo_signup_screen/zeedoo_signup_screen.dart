import 'controller/zeedoo_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooSignupScreen extends GetWidget<ZeedooSignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClippathgroup3,
              height: getVerticalSize(
                812,
              ),
              width: getHorizontalSize(
                375,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
