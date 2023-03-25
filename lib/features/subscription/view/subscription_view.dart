import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/features/subscription/controller/subscription_controller.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

class SubscriptionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SubscriptionController>(
        builder: (SubscriptionController controller) {
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
                      title: AppString.subscription,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),

                    /// Add New Staff
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
                            title: AppString.addNewSubscription,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.subscriptionInfo,
                      color: ColorConstant.black900,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    16.sh,
                    CustomText(
                      title: AppString.title,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.title,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.duration,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.selectDuration,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.priceUSD,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.priceUSD,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.offerPriceUSD,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.offerPriceUSD,
                      // textEditingController: controller.offerPriceUSD,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.allowShopToAdd,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.allowShopToAdd,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.allowStaffToAdd,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.allowStaffToAdd,
                      // textEditingController: controller.country,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.description,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      height: null,
                      maxLines: 10,
                      minLines: 5,
                      borderRadius: 10,
                      hintText: AppString.descriptionHint,
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
      );
    });
  }
}
