import 'controller/zeedoo_screen_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenNineScreen extends GetWidget<ZeedooScreenNineController> {
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
                  svgPath: ImageConstant.imgClippathgroupFfffffff928x402,
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
