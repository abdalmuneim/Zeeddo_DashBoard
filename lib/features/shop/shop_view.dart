import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import 'controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ShopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShopController>(builder: (ShopController controller) {
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
                      title: AppString.shop,
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
                            title: AppString.addYourShop,
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
                      title: AppString.shopName,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.shopName2Hint,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.shopAlias,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.shopAliasHint,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.ownerName,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.ownerNameHint,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.mobileNumber,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.mobileNumberHint,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.email,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.emailHint,
                    ),
                    13.sh,

                    /// address details
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
                            title: AppString.yourStoreAddressDetails,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    CustomText(
                      title: AppString.address,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.addressHint,
                      // textEditingController: controller.address,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.country,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.countryHint,
                      // textEditingController: controller.country,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.state,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.stateHint,
                      // textEditingController: controller.state,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.city,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.cityHint,
                      // textEditingController: controller.city,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.postalCode,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.postalCodeHint,
                      // textEditingController: controller.postalCode,
                    ),
                    13.sh,

                    /// upload logo
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
                            title: AppString.uploadYourStoreLogo,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    CustomText(
                      title: AppString.uploadYourStoreLogo,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    InkWell(
                      onTap: () {},
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
                        child: CustomText(
                          title: AppString.uploadYourStoreLogoBTN,
                          color: ColorConstant.buttonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    13.sh,

                    /// store category
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
                            title: AppString.yourStoreCategories,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sw,
                    CustomText(
                      title: AppString.category,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.category,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.subCategory,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.subCategory,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.tags,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.tags,
                    ),
                    13.sh,

                    /// Your Store Gallery Pictures
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
                            title: AppString.yourStoreGalleryPictures,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.yourStoreGalleryPictures,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    InkWell(
                      onTap: () {},
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
                        child: CustomText(
                          title: AppString.uploadYourStoreLogoBTN,
                          color: ColorConstant.buttonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    13.sh,

                    /// Introduce About Your Store
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
                            title: AppString.introduceAboutYourStore,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sw,
                    CustomText(
                      title: AppString.introduceAboutYourStore,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      borderRadius: 10,
                      maxLines: 10,
                      minLines: 5,
                      height: null,
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
