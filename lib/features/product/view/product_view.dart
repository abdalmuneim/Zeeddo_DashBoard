import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/features/product/controller/product_controller.dart';
import 'package:shahrukh_s_application1/widgets/custom_dropdown.dart';
import 'package:shahrukh_s_application1/widgets/custom_switcher.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

class ZeedooScreenSixteenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
        builder: (ProductController controller) {
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
                      title: AppString.product,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),

                    /// Add New Staff
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.addNewProduct,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    16.sh,
                    CustomText(
                      title: AppString.selectYourShop,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      hint: AppString.selectYourShop,
                      items: controller.stores,
                      value: controller.selectedStore.isEmpty
                          ? null
                          : controller.selectedStore,
                      onChanged: controller.selectStore,
                    ),
                    13.sh,

                    /// Add New Staff
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productBasicInfo,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    16.sh,
                    CustomText(
                      title: AppString.productName,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.productName,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.state,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      items: controller.status,
                      value: controller.selectedStat,
                      onChanged: controller.selectStatus,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.currency,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.currencyINR,
                      textEditingController: controller.currencyINR,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.price,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
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
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.offerPrice,
                      // textEditingController: controller.country,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.stockKeeping,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.stockKeepingHint,
                      // textEditingController: controller.state,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.quantity,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.quantity,
                      // textEditingController: controller.city,
                    ),
                    13.sh,

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

                    /// product color
                    CustomText(
                      title: AppString.colors,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    GestureDetector(
                      onTap: () => controller.changeColor(),
                      child: Container(
                        width: double.infinity,
                        height: 53,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: .5,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomText(
                              title: AppString.colors,
                              fontSize: 14,
                              color: ColorConstant.labelTextColor,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: controller.productColor,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      ),
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

                    CustomText(
                      title: AppString.youTubeUrl,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.youTubeUrl,
                    ),

                    13.sh,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: [
                            CustomText(
                              title: AppString.isFeature,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isFeature,
                              onToggle: controller.switcherISFeature,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomText(
                              title: AppString.isPopular,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isPopular,
                              onToggle: controller.switcherIsPopular,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomText(
                              title: AppString.isShippingFree,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isShippingFree,
                              onToggle: controller.switcherIsShippingFree,
                            ),
                          ],
                        ),
                      ],
                    ),
                    13.sh,

                    /// Add New Staff
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productDimensionsWeight,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.dimensionUnit,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      items: controller.dimensionUnit,
                      value: controller.selectedDimensionUnit,
                      onChanged: (String? value) =>
                          controller.selectDimensionUnit(value),
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.length,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.length,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.width,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.width,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.height,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.height,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.weightUnit,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomDropdown<String>(
                      items: controller.weightUnit,
                      value: controller.selectedWeightUnit,
                      onChanged: (String? value) =>
                          controller.selectWeightUnit(value),
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.weight,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.weight,
                    ),
                    13.sh,

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productDimensionsWeight,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sh,
                    CustomText(
                      title: AppString.uploadProductPictures,
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

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productDescription,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sh,
                    CustomText(
                      title: AppString.productDescription,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      maxLines: 10,
                      minLines: 5,
                      height: null,
                      borderRadius: 10,
                      hintText: AppString.productDescription,
                    ),
                    13.sh,

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productBuyReturnPolicy,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sh,
                    CustomText(
                      title: AppString.productBuyReturnPolicy,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      maxLines: 10,
                      minLines: 5,
                      height: null,
                      borderRadius: 10,
                      hintText: AppString.productBuyReturnPolicy,
                    ),
                    13.sh,

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productWarrantyPolicy,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    10.sh,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: AppString.localSellerWarranty,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.localSellerWarranty,
                              onToggle: controller.switcherLocalSellerWarranty,
                            ),
                            16.sh,
                            CustomText(
                              title: AppString.manufacturerWarranty,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isFeature,
                              onToggle: controller.switcherManufacturerWarranty,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: AppString.noWarranty,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isFeature,
                              onToggle: controller.switcherNoWarranty,
                            ),
                            16.sh,
                            CustomText(
                              title: AppString.nonLocalWarranty,
                              color: ColorConstant.buttonColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            4.sh,
                            CustomSwitcher(
                              status: controller.isFeature,
                              onToggle: controller.switcherNonLocalWarranty,
                            ),
                          ],
                        )
                      ],
                    ),
                    13.sh,
                    CustomTextFormField(
                      hintText: AppString.warrantyPolicyDescription,
                      enabledBorder: true,
                      maxLines: 10,
                      minLines: 3,
                      borderRadius: 10,
                      height: null,
                    ),
                    13.sh,

                    CustomText(
                      title: AppString.productCustomization,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.productCustomizationHint,
                    ),
                    13.sh,
                    SizedBox(
                      height: getVerticalSize(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: CustomText(
                                title: AppString.addMore,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    13.sh,

                    ///
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.productSEO,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    16.sh,
                    CustomText(
                      title: AppString.metaTitle,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.metaTitle,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.metaKeywords,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.metaKeywords,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.metaDescription,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: AppString.metaDescription,
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
