import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_dropdown.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import '../controller/add_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenNineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
        builder: (AddProductController controller) {
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
                      title: AppString.addProduct,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 0),
                      child: CustomText(
                        title: AppString.productName,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    CustomText(
                      title: AppString.firstProduct,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.productName,
                    ),

                    13.sh,
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 0),
                      child: CustomText(
                        title: AppString.productPrice,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    CustomText(
                      title: AppString.productPriceDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    10.sh,
                    CustomText(
                      title: AppString.currency,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      hint: AppString.selectYourShop,
                      items: controller.currencies,
                      value: controller.selectedCurrency.isEmpty
                          ? null
                          : controller.selectedCurrency,
                      onChanged: controller.selectCurrency,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.price,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.price,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.price,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.price,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.offerPrice,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.offerPrice,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.productTags,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      hint: AppString.tags,
                      items: controller.tags,
                      value: controller.selectedTag.isEmpty
                          ? null
                          : controller.selectedTag,
                      onChanged: controller.selectTag,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.productYouTubeUrl,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.productYouTubeUrl,
                    ),
                    90.sh,
                    CustomText(
                      title: AppString.aboutProduct,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    8.sh,
                    CustomText(
                      title: AppString.briefDetailsProduct,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      height: null,
                      enabledBorder: true,
                      borderRadius: 15,
                      maxLines: 15,
                      minLines: 3,
                      hintText: AppString.aboutProduct,
                    ),
                    44.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: controller.isLoading
                              ? () {}
                              : () => controller.updateProduct(),
                          child: controller.isLoading
                              ? CircularProgressIndicator()
                              : CustomText(
                                  title: AppString.update,
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
    });
  }
}
