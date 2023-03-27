import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/core/utils/validators.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import '../controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class ZeedooSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(builder: (SignupController controller) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.bg,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 90),
              Text(
                AppString.loginTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Image.asset(
                ImageConstant.logoWithContainer,
                width: getSize(200),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Form(
                  key: controller.formKey,
                  child: Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.symmetric(horizontal: getVerticalSize(50)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: CustomText(
                              title: AppString.createAn,
                              fontSize: 40,
                              color: ColorConstant.mainApp,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: CustomText(
                              title: AppString.account,
                              fontSize: 40,
                              color: ColorConstant.red,
                            ),
                          ),
                          CustomText(
                            title: AppString.shopName,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          4.sh,
                          CustomTextFormField(
                              enabledBorder: true,
                              hintText: AppString.shopNameHint,
                              fillColor: ColorConstant.scaffold,
                              validator: (value) => AppValidator.validateFields(
                                    value,
                                    ValidationType.notEmpty,
                                    context,
                                  )),
                          13.sh,
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
                              fillColor: ColorConstant.scaffold,
                              validator: (value) => AppValidator.validateFields(
                                    value,
                                    ValidationType.notEmpty,
                                    context,
                                  )),
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
                              fillColor: ColorConstant.scaffold,
                              hintText: AppString.mobileNumberHint,
                              isNumberOnly: true,
                              validator: (value) => AppValidator.validateFields(
                                    value,
                                    ValidationType.phone,
                                    context,
                                  )),
                          13.sh,
                          CustomText(
                            title: AppString.email,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          4.sh,
                          CustomTextFormField(
                            textEditingController: controller.emailTCR,
                            validator: (value) => AppValidator.validateFields(
                              value,
                              ValidationType.email,
                              context,
                            ),
                            enabledBorder: true,
                            fillColor: ColorConstant.scaffold,
                            hintText: AppString.emailHint,
                          ),
                          13.sh,
                          CustomText(
                            title: AppString.password,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          4.sh,
                          CustomTextFormField(
                              enabledBorder: true,
                              fillColor: ColorConstant.scaffold,
                              hintText: AppString.password,
                              validator: (value) => AppValidator.validateFields(
                                    value,
                                    ValidationType.notEmpty,
                                    context,
                                  )),
                          13.sh,
                          CustomText(
                            title: AppString.confirmPassword,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          4.sh,
                          CustomTextFormField(
                              enabledBorder: true,
                              fillColor: ColorConstant.scaffold,
                              hintText: AppString.confirmPassword,
                              validator: (value) => AppValidator.validateFields(
                                    value,
                                    ValidationType.notEmpty,
                                    context,
                                  )),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: controller.isLoading
                                ? () {}
                                : () => controller.register(),
                            child: controller.isLoading
                                ? CircularProgressIndicator()
                                : Text(
                                    AppString.setupYourShop,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                title: AppString.haveAccount,
                                textAlign: TextAlign.center,
                                color: ColorConstant.labelTextColor,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.offAllNamed(AppRoutes.loginScreen);
                                },
                                child: CustomText(
                                  title: AppString.loginReg,
                                  color: ColorConstant.red,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
