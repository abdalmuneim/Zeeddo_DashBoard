import 'controller/zeedoo_screen_sixteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenSixteenScreen
    extends GetWidget<ZeedooScreenSixteenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            width: getHorizontalSize(
              401,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClippathgroupFfffffff2815x401,
                  height: getVerticalSize(
                    2815,
                  ),
                  width: getHorizontalSize(
                    401,
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
