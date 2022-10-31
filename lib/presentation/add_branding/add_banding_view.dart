import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeeddodashboard/presentation/resources/constants_manager.dart';
import 'package:zeeddodashboard/presentation/resources/values_manager.dart';
import 'package:zeeddodashboard/presentation/widgets/custom_pop/custom_pop_dialg.dart';

import '../resources/app_strings.dart';
import '../resources/size_config.dart';
import '../widgets/custom_text_form_filed.dart';
import '/presentation/resources/assets_manager.dart';
import '/presentation/resources/color_manager.dart';
import '/presentation/widgets/custom_app_bar.dart';
import '/presentation/widgets/my_drawer.dart';

class AddBrandingDetails extends StatefulWidget {
  const AddBrandingDetails({Key? key}) : super(key: key);

  @override
  State<AddBrandingDetails> createState() => _AddBrandingDetailsState();
}

class _AddBrandingDetailsState extends State<AddBrandingDetails> {
  final TextEditingController storeNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: AppConstants.milliseconds),
      () => getPOP(),
    );
  }

  getPOP() {
    return CustomPOPDialog().pOPDialog(context,
        title: AppStrings.popTitleBranding,
        body: Column(
          children: [
            const SizedBox(height: AppSize.s10),
            checkboxListTile(AppStrings.popBodyBranding1),
            const SizedBox(height: AppSize.s18),
            checkboxListTile(AppStrings.popBodyBranding2),
            const SizedBox(height: AppSize.s18),
            checkboxListTile(AppStrings.popBodyBranding3),
            const SizedBox(height: AppSize.s10),
          ],
        ));
  }

  Directionality checkboxListTile(String title) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: CheckboxListTile(
        title: Text(
          title,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        value: true,
        onChanged: (value) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.white,
      drawer: const MyDrawer(),
      appBar: CustomAppBar(
        title: Image.asset(ImagesAssets.horiLogo),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.language_rounded))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppMargin.m30, vertical: AppMargin.m30),
        child: ListView(
          children: [
            /// Title
            Text(AppStrings.brandInfo,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: AppSize.s25),

            /// Store Name
            Text(AppStrings.storeName,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: AppSize.s8),
            Text(AppStrings.subtitleStoreName,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: AppSize.s8),
            CustomContainerTextFormFiled(
                bMargin: false,
                controller: storeNameController,
                hintText: AppStrings.hintStoreName),
            const SizedBox(height: AppSize.s32),

            /// Visual identity
            Text(AppStrings.visualIdentity,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: AppSize.s8),
            Text(AppStrings.subTitleVisualIdentity,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: AppSize.s8),
            Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.only(left: AppPadding.p8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  border: Border.all(
                    color: ColorsManger.gray,
                    width: AppSize.s1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.hintLogo,
                      style: Theme.of(context).textTheme.bodyLarge),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p14, horizontal: AppPadding.p8),
                      width: SizeConfig.screenWidth / 4,
                      decoration: BoxDecoration(
                        color: ColorsManger.lightPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(AppSize.s8),
                            bottomRight: Radius.circular(AppSize.s8)),
                      ),
                      child: Text(AppStrings.browser,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s32),

            /// Slider Image
            Text(AppStrings.sliderImage,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: AppSize.s8),
            Text(AppStrings.subtitleSliderImage,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: AppSize.s8),
            Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.only(left: AppPadding.p8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  border: Border.all(
                    color: ColorsManger.gray,
                    width: AppSize.s1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.hintSliderImage,
                      style: Theme.of(context).textTheme.bodyLarge),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p14, horizontal: AppPadding.p8),
                      width: SizeConfig.screenWidth / 4,
                      decoration: BoxDecoration(
                        color: ColorsManger.lightPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(AppSize.s8),
                            bottomRight: Radius.circular(AppSize.s8)),
                      ),
                      child: Text(AppStrings.browser,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s32),

            /// Favicon
            Text(AppStrings.favicon,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: AppSize.s8),
            Text(AppStrings.subTitleFavicon,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: AppSize.s8),
            Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.only(left: AppPadding.p8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  border: Border.all(
                    color: ColorsManger.gray,
                    width: AppSize.s1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.hintFavicon,
                      style: Theme.of(context).textTheme.bodyLarge),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p14, horizontal: AppPadding.p8),
                      width: SizeConfig.screenWidth / 4,
                      decoration: BoxDecoration(
                        color: ColorsManger.lightPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(AppSize.s8),
                            bottomRight: Radius.circular(AppSize.s8)),
                      ),
                      child: Text(AppStrings.browser,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s32),

            /// alternative Image
            Text(AppStrings.alternative,
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: AppSize.s8),
            Text(AppStrings.subTitleAlternative,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: AppSize.s8),
            Container(
              width: SizeConfig.screenWidth,
              padding: const EdgeInsets.only(left: AppPadding.p8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s8),
                  border: Border.all(
                    color: ColorsManger.gray,
                    width: AppSize.s1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.alternative,
                      style: Theme.of(context).textTheme.bodyLarge),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p14, horizontal: AppPadding.p8),
                      width: SizeConfig.screenWidth / 4,
                      decoration: BoxDecoration(
                        color: ColorsManger.lightPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(AppSize.s8),
                            bottomRight: Radius.circular(AppSize.s8)),
                      ),
                      child: Text(AppStrings.browser,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: AppSize.s32),

            /// Upload Button
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  AppStrings.uploadBtn,
                ))
          ],
        ),
      ),
    );
  }
}
