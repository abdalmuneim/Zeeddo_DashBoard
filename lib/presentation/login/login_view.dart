import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeeddodashboard/presentation/resources/assets_manager.dart';
import 'package:zeeddodashboard/presentation/widgets/custom_text_form_filed.dart';

import '/presentation/resources/constants_manager.dart';
import '/presentation/widgets/custom_app_bar.dart';
import '../resources/app_strings.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/size_config.dart';
import '../resources/values_manager.dart';
import '../widgets/sin_in_buttons.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pssController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      backgroundColor: ColorsManger.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
              left: AppMargin.m30, right: AppMargin.m20, top: AppMargin.m60),
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Logo
                Image.asset(ImagesAssets.logo),

                const SizedBox(height: AppSize.s30),

                /// sign Up text
                SizedBox(
                  width: SizeConfig.screenWidth,
                  child: Text(AppStrings.login,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                const SizedBox(height: AppSize.s148),

                /// email text form filed
                CustomContainerTextFormFiled(
                  hintText: AppStrings.hintEmail,
                  controller: _emailController,
                ),

                const SizedBox(height: AppSize.s30),

                /// password text form filed
                CustomContainerTextFormFiled(
                  controller: _pssController,
                  hintText: AppStrings.hintPassword,
                  obscureText: true,
                ),
                const SizedBox(height: AppSize.s10),

                ///  Forget button
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppStrings.forget,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s60),

                /// Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: SizeConfig.screenHeight / 15,
                  child: ElevatedButton(
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
                              context, Routes.addUrShop);
                        });
                      },
                      child: const Text(
                        AppStrings.login,
                      )),
                ),
                const SizedBox(height: AppSize.s20),

                /// Join with us, Create Account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.registerRoute);
                      },
                      child: Text(
                        AppStrings.joinWithUs,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.registerRoute);
                      },
                      child: Text(
                        AppStrings.signUp,
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
      ),
    );
  }
}
