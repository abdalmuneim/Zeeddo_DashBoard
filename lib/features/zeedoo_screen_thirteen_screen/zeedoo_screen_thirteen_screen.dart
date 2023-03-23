import 'controller/zeedoo_screen_thirteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenThirteenScreen
    extends GetWidget<ZeedooScreenThirteenController> {
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
                  svgPath: ImageConstant.imgClippathgroupFf000000828x402,
                  height: getVerticalSize(
                    828,
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