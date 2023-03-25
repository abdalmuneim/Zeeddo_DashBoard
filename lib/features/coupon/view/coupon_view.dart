import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import '../controller/coupon_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooScreenTwelveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CouponController>(builder: (CouponController controller) {
      return Scaffold(
          body: Scaffold(
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
                      title: AppString.coupon,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),

                    /// Add New coupon
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.addNewCoupon,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.storeBasicInfo,
                      color: ColorConstant.black900,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    16.sh,
                    CustomText(
                      title: AppString.couponText,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.couponText,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.couponType,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.couponTypeHint,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.couponValue,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.couponValue,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.minimumPurchase,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.minimumPurchase,
                      // textEditingController: controller.minimumPurchase,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.startDate,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.startDate,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.startTime,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.timeHint,
                      // textEditingController: controller.startTime,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.expiryDate,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.expiryDate,
                      // textEditingController: controller.expiryDate,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.expiryTime,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.timeHint,
                      // textEditingController: controller.expiryTime,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.freeShipping,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      textEditingController: controller.freeShippingCTR,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.excludedOfferProduct,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.category,
                      textEditingController: controller.excludedOfferProductCTR,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.numberOfUses,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.selectNumber,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.frequencyOfUsePerCustomer,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.selectNumber,
                    ),

                    44.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: controller.isLoading
                              ? () {}
                              : () => controller.addNew(),
                          child: controller.isLoading
                              ? CircularProgressIndicator()
                              : CustomText(
                                  title: AppString.addNew,
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
      ));
    });
  }
}
