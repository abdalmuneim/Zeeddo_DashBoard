import '../controller/theme_customize_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ThemeCustomizeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeCustomizeController>(
        builder: (ThemeCustomizeController controller) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomImageView(
              imagePath: ImageConstant.imgClippathgroup1014x401,
              height: getVerticalSize(
                928,
              ),
              width: getHorizontalSize(
                402,
              ),
            ),
          ]),
        ),
      );
    });
  }
}
