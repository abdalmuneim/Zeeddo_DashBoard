import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../resources/assets_manager.dart';
import '../widgets/custom_text_form_filed.dart';
import '/presentation/resources/color_manager.dart';
import '../resources/app_strings.dart';
import '../resources/constants_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/size_config.dart';
import '../resources/values_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _conPassController = TextEditingController();

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsManger.white,
      body: Container(
        margin: const EdgeInsets.only(
        left: AppMargin.m30, right: AppMargin.m20, top: AppMargin.m60),
        child: Form(
      key: _globalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s20),
          /// Create Account text

          /// Logo
          Image.asset(ImagesAssets.logo),

          const SizedBox(height: AppSize.s30),

          const SizedBox(height: AppSize.s8),
          Text(AppStrings.createShop,
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: AppSize.s8),
          Text(AppStrings.plzSignUp,
              style: Theme.of(context).textTheme.displaySmall),
          const SizedBox(height: AppSize.s32),
          CustomContainerTextFormFiled(
              controller: shopNameController,
              textInputType: TextInputType.name,
              hintText: AppStrings.enterUShopName),
          const SizedBox(height: AppSize.s18),
          CustomContainerTextFormFiled(
              controller: nameController,
              textInputType: TextInputType.name,
              hintText: AppStrings.enterUName),
          const SizedBox(height: AppSize.s18),
          CustomContainerTextFormFiled(
              controller: mobileController,
              textInputType: TextInputType.number,
              hintText: AppStrings.enterUMobileNum),
          const SizedBox(height: AppSize.s18),
          CustomContainerTextFormFiled(
              controller: emailController,
              textInputType: TextInputType.emailAddress,
              hintText: AppStrings.enterUEmailAddress),
          const SizedBox(height: AppSize.s18),

          /// password text form filed
          CustomContainerTextFormFiled(
            controller: _passController,
            hintText: AppStrings.hintPassword,
            obscureText: true,
          ),
          const SizedBox(height: AppSize.s18),

          /// Confirm password text form filed
          CustomContainerTextFormFiled(
            controller: _conPassController,
            hintText: AppStrings.hintPassword,
            obscureText: true,
          ),
          const SizedBox(height: AppSize.s10),
          const SizedBox(height: AppSize.s40),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            height: SizeConfig.screenHeight / 15,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManger.secondColor,
              ),
                onPressed: () {
                  showDialog(
                      barrierColor: ColorsManger.gray
                          .withOpacity(AppConstants.opacity_5),
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => AlertDialog(
                            title: SizedBox(
                              width: AppSize.s18,
                              height: AppSize.s30,
                              child: SpinKitRotatingPlain(
                                color: ColorsManger.primary,
                              ),
                            ),
                          ));
                  Future.delayed(const Duration(seconds: 3), () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(
                        context, Routes.addBrandingDetails);
                  });
                },
                child: Text(
                  AppStrings.startUShop,
                  style: Theme.of(context).textTheme.labelMedium,
                )),
          ),
          const SizedBox(height: AppSize.s20),

          /// Have Account?, Sign Up Now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.haveAcc,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, Routes.loginRoute);
                },
                child: Text(
                  AppStrings.login,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s30),
        ],
      ),
        ),
      ),
    );
  }
}
