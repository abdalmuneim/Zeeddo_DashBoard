import 'package:flutter/material.dart';

import '/presentation/widgets/custom_app_bar.dart';
import '../../resources/app_strings.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';
import '../../resources/values_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManger.white,
appBar: const CustomAppBar(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: AppMargin.m30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  /// Profile Image
                  CircleAvatar(
                    backgroundColor: ColorsManger.lightPrimary,

                    // here Add Image Url
                    backgroundImage: const NetworkImage(''),
                    radius: 60,
                  ),
                  const SizedBox(height: AppSize.s30),

                  /// Text name
                  Text(AppStrings.userName,
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: AppSize.s10),

                  /// Text user Location
                  Text(AppStrings.locationUser,
                      style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: AppSize.s30),

                  /// On Going Order
                  SizedBox(
                      width: double.infinity,
                      height: SizeConfig.screenHeight / 15,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.s25,
                                      vertical: AppSize.s18),
                                  child: Text(
                                    AppStrings.goingOrder,
                                    style:
                                        Theme.of(context).textTheme.displayMedium,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppSize.s25,
                                        vertical: AppSize.s18),
                                    child: Container(
                                        width: AppSize.s55,
                                        height: AppSize.s50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: ColorsManger.white,
                                          borderRadius:
                                              BorderRadius.circular(AppSize.s50),
                                        ),
                                        child: Text(AppStrings.numOrder,
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall)))
                              ]))),
                  const SizedBox(height: AppSize.s50),

                  /// Detail Profile
                  ListTile(
                    title: Text(
                      AppStrings.detailProfile,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: AppSize.s18,
                      color: ColorsManger.neutralPrimary,
                    ),
                  ),
                  const SizedBox(height: AppSize.s30),

                  /// Setting
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.settingRoute);
                    },
                    title: Text(
                      AppStrings.setting,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: AppSize.s18,
                      color: ColorsManger.neutralPrimary,
                    ),
                  ),
                  const SizedBox(height: AppSize.s30),

                  /// Language
                  ListTile(
                      title: Text(
                        AppStrings.language,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppStrings.english),
                      )),
                  const SizedBox(height: AppSize.s40),

                  /// Currency
                  ListTile(
                      title: Text(
                        AppStrings.currency,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        child: const Text(AppStrings.uSD),
                      )),
                  const SizedBox(height: AppSize.s94),
                ],
              ),
            ),
          ),
        ));
  }
}
