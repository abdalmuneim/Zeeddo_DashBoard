import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/features/staff/controller/staff_controller.dart';
import 'package:shahrukh_s_application1/widgets/custom_dropdown.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class StaffView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StaffController>(
      builder: (StaffController controller) {
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
                        title: AppString.staff,
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
                              title: AppString.addNewStaff,
                              color: ColorConstant.red,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ),
                      CustomText(
                        title: AppString.subTitleStaff,
                        color: ColorConstant.black900,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      16.sh,
                      CustomText(
                        title: AppString.name,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomTextFormField(
                        enabledBorder: true,
                        hintText: AppString.name,
                      ),
                      13.sh,

                      CustomText(
                        title: AppString.role,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomDropdown<String>(
                        hint: AppString.selectRoleHint,
                        items: controller.roles,
                        value: controller.selectedRole.isEmpty
                            ? null
                            : controller.selectedRole,
                        onChanged: controller.selectRole,
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
                        title: AppString.address,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomTextFormField(
                        enabledBorder: true,
                        hintText: AppString.addressHint,
                        textEditingController: controller.address,
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
                        textEditingController: controller.country,
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
                        textEditingController: controller.state,
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
                        textEditingController: controller.city,
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
                        textEditingController: controller.postalCode,
                      ),
                      13.sh,

                      CustomText(
                        title: AppString.category,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomDropdown<String>(
                        hint: AppString.category,
                        items: controller.categories,
                        value: controller.selectedCategory.isEmpty
                            ? null
                            : controller.selectedCategory,
                        onChanged: controller.selectCategory,
                      ),
                      13.sh,

                      CustomText(
                        title: AppString.subCategory,
                        color: ColorConstant.buttonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      4.sh,
                      CustomDropdown<String>(
                        hint: AppString.subCategory,
                        items: controller.subCategories,
                        value: controller.selectedSubCategory.isEmpty
                            ? null
                            : controller.selectedSubCategory,
                        onChanged: controller.selectSubCategory,
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
      },
    );
  }
}
