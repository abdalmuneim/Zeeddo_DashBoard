import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/core/utils/validators.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';

import '../controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (LoginController controller) {
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
            child: SingleChildScrollView(
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
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 100, fontFamily: 'Roboto'),
                      children: <TextSpan>[
                        TextSpan(
                          text: AppString.lets,
                          style: TextStyle(
                            color: ColorConstant.mainApp,
                          ),
                        ),
                        TextSpan(
                          text: AppString.go,
                          style: TextStyle(
                            color: ColorConstant.red,
                          ),
                        ),
                      ],
                    ),
                    textScaleFactor: 0.5,
                  ),
                  SizedBox(height: 30),
                  Form(
                      key: controller.formKey,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getVerticalSize(50)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomTextFormField(
                              textEditingController: controller.userTCR,
                              validator: (value) => AppValidator.validateFields(
                                value,
                                ValidationType.email,
                                context,
                              ),
                              fillColor: ColorConstant.scaffold,
                              suffixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Colors.black,
                                size: getSize(30),
                              ),
                              enabledBorder: true,
                              borderRadius: 100,
                              hintText: AppString.emailHint,
                              keyboardType: TextInputType.emailAddress,
                              labelText: AppString.user,
                            ),
                            SizedBox(height: 30),
                            CustomTextFormField(
                              textEditingController: controller.passTCR,
                              validator: (value) => AppValidator.validateFields(
                                value,
                                ValidationType.notEmpty,
                                context,
                              ),
                              fillColor: ColorConstant.scaffold,
                              obscureText: true,
                              enabledBorder: true,
                              borderRadius: 100,
                              hintText: AppString.password,
                              labelText: AppString.password,
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: controller.isLoading
                                  ? () {}
                                  : () => controller.login(),
                              child: controller.isLoading
                                  ? CircularProgressIndicator()
                                  : Text(
                                      AppString.login,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              AppString.notHaveAccount,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.signupScreen);
                              },
                              child: CustomText(
                                color: ColorConstant.mainApp,
                                title: AppString.createAccount,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
