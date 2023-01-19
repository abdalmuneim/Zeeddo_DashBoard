import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/assets_manager.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';
import 'package:zeeddodashboard/core/utils/widgets/custom_app_bar.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.white,
      appBar: const CustomAppBar(
        title: Text(AppStrings.setting),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppMargin.m30, vertical: AppMargin.m30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.myAccount,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: AppSize.s30),
                buildRow(
                    context, AppStrings.addressBook, ImagesAssets.bookSquareIc),
                const SizedBox(height: AppSize.s30),
                buildRow(context, AppStrings.paymentInformation,
                    ImagesAssets.cardIc),
                const SizedBox(height: AppSize.s30),
                buildRow(context, AppStrings.notification,
                    ImagesAssets.notificationIc),
                const SizedBox(height: AppSize.s40),
                Text(AppStrings.information,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: AppSize.s30),
                buildRow(context, AppStrings.version, ImagesAssets.mobileIc),
                const SizedBox(height: AppSize.s30),
                buildRow(
                    context, AppStrings.termAndCondition, ImagesAssets.noteIc),
                const SizedBox(height: AppSize.s30),
                buildRow(context, AppStrings.privacyPolicy,
                    ImagesAssets.shieldTickIc),
                const SizedBox(height: AppSize.s30),
              ],
            ),

            /// Sign Out
            GestureDetector(
              onTap: () {},
              child: Text(AppStrings.signOut,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.labelSmall),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow(BuildContext context, String title, String icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SvgPicture.asset(icon, color: ColorsManger.black),
      ],
    );
  }
}
