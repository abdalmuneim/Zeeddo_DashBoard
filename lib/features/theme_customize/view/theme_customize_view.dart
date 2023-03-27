import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';

import '../controller/theme_customize_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ThemeCustomizeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeCustomizeController>(
      builder: (ThemeCustomizeController controller) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        ImageConstant.smallCircle,
                      ),
                      SvgPicture.asset(
                        ImageConstant.bigCircle,
                      ),
                    ],
                  ),

                  ///title
                  Positioned(
                    top: 80,
                    left: 22,
                    child: CustomText(
                      title: AppString.themeCustomize,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            int numThemes = index + 1;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: AppString.theme +
                                      " " +
                                      numThemes.toString(),
                                  color: ColorConstant.buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                CustomText(
                                  title: AppString.selectTheme,
                                  color: ColorConstant.lightRed,
                                  fontWeight: FontWeight.w300,
                                  textAlign: TextAlign.left,
                                  fontSize: 12,
                                ),
                                9.sh,
                                Image.asset(
                                  ImageConstant.imageTheme,
                                ),
                                13.sh,
                                SizedBox(
                                  width: getHorizontalSize(150),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: CustomText(
                                      title: AppString.selectTheme,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                25.sh,
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => 22.sh,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
