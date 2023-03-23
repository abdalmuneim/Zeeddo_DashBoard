import 'controller/zeedoo_screen_ten_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenTenScreen extends GetWidget<ZeedooScreenTenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            width: getHorizontalSize(
              402,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClippathgroup928x402,
                  height: getVerticalSize(
                    928,
                  ),
                  width: getHorizontalSize(
                    402,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
