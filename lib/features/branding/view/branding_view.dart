import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/core/utils/image_pic.dart';
import 'package:shahrukh_s_application1/features/branding/controller/branding_controller.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

class ZeedooScreenTenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BrandingController>(
      builder: (BrandingController controller) {
        return Scaffold(
          body: Stack(
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
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: 22, top: 80, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///title
                      CustomText(
                        title: AppString.branding,
                        color: ColorConstant.mainApp,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),

                      10.sh,
                      CustomText(
                        title: AppString.storeName,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      CustomText(
                        title: AppString.chooseName,
                        color: ColorConstant.lightRed,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.left,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomTextFormField(
                        enabledBorder: true,
                        hintText: AppString.storeName,
                      ),
                      13.sh,
                      CustomText(
                        title: AppString.visualIdentity,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      CustomText(
                        title: AppString.visualIdentityDesc,
                        color: ColorConstant.lightRed,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.left,
                        fontSize: 12,
                      ),
                      4.sh,
                      InkWell(
                        onTap: () => controller.getImage(ImageDimensions.Logo),
                        borderRadius: BorderRadius.circular(10),
                        highlightColor: ColorConstant.mainApp,
                        hoverColor: ColorConstant.mainApp,
                        splashColor: ColorConstant.mainApp,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: getVerticalSize(100),
                          decoration: BoxDecoration(
                            color: ColorConstant.containerColor.withOpacity(.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.imgLogo == null
                              ? CustomText(
                                  title: AppString.logoBrowse,
                                  color: ColorConstant.buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )
                              : Image.file(
                                  controller.imgLogo!,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                        ),
                      ),
                      26.sh,
                      CustomText(
                        title: AppString.sliderImage,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      CustomText(
                        title: AppString.sliderImageDesc,
                        color: ColorConstant.lightRed,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.left,
                        fontSize: 12,
                      ),
                      4.sh,
                      InkWell(
                        onTap: () =>
                            controller.getImage(ImageDimensions.Slider),
                        borderRadius: BorderRadius.circular(10),
                        highlightColor: ColorConstant.mainApp,
                        hoverColor: ColorConstant.mainApp,
                        splashColor: ColorConstant.mainApp,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: getVerticalSize(100),
                          decoration: BoxDecoration(
                            color: ColorConstant.containerColor.withOpacity(.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.imgSlider == null
                              ? CustomText(
                                  title: AppString.sliderBrowse,
                                  color: ColorConstant.buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )
                              : Image.file(
                                  controller.imgSlider!,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                        ),
                      ),
                      26.sh,
                      CustomText(
                        title: AppString.favicon,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      CustomText(
                        title: AppString.faviconDesc,
                        color: ColorConstant.lightRed,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.left,
                        fontSize: 12,
                      ),
                      4.sh,
                      InkWell(
                        onTap: () => controller.getImage(ImageDimensions.Fav),
                        borderRadius: BorderRadius.circular(10),
                        highlightColor: ColorConstant.mainApp,
                        hoverColor: ColorConstant.mainApp,
                        splashColor: ColorConstant.mainApp,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: getVerticalSize(100),
                          decoration: BoxDecoration(
                            color: ColorConstant.containerColor.withOpacity(.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.imgFav == null
                              ? CustomText(
                                  title: AppString.faviconImageBrowse,
                                  color: ColorConstant.buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )
                              : Image.file(
                                  controller.imgFav!,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                        ),
                      ),
                      26.sh,
                      CustomText(
                        title: AppString.alternativeImage,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      CustomText(
                        title: AppString.alternativeImageDesc,
                        color: ColorConstant.lightRed,
                        fontWeight: FontWeight.w300,
                        textAlign: TextAlign.left,
                        fontSize: 12,
                      ),
                      4.sh,
                      InkWell(
                        onTap: () =>
                            controller.getImage(ImageDimensions.Alternative),
                        borderRadius: BorderRadius.circular(10),
                        highlightColor: ColorConstant.mainApp,
                        hoverColor: ColorConstant.mainApp,
                        splashColor: ColorConstant.mainApp,
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: getVerticalSize(100),
                          decoration: BoxDecoration(
                            color: ColorConstant.containerColor.withOpacity(.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: controller.imgAlternative == null
                              ? CustomText(
                                  title: AppString.alternativeImageBrowse,
                                  color: ColorConstant.buttonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                )
                              : Image.file(
                                  controller.imgAlternative!,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                        ),
                      ),
                      44.sh,
                      Center(
                        child: SizedBox(
                          width: getHorizontalSize(250),
                          child: ElevatedButton(
                            onPressed: controller.isLoading
                                ? () {}
                                : () => controller.updateBrand(),
                            child: controller.isLoading
                                ? CircularProgressIndicator()
                                : CustomText(
                                    title: AppString.submit,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                          ),
                        ),
                      ),
                      31.sh,
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
