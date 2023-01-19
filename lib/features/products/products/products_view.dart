import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/assets_manager.dart';
import 'package:zeeddodashboard/core/resources/font_manager.dart';
import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';
import 'package:zeeddodashboard/core/utils/widgets/custom_app_bar.dart';
import 'package:zeeddodashboard/core/utils/widgets/custom_green_drop_down_button.dart';
import 'package:zeeddodashboard/core/utils/widgets/custom_text_form_filed.dart';
import 'package:zeeddodashboard/features/widgets/my_drawer.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';

class ProductsView extends StatelessWidget {
  ProductsView({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Image.asset(ImagesAssets.horizontalLogo),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.language_rounded))
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: AppMargin.m30, vertical: AppMargin.m40),
          child: Column(
            children: [
              // const SizedBox(height: AppSize.s8),

              /// Search
              Container(
                  width: SizeConfig.screenWidth,
                  // height: SizeConfig.screenHeight/10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManger.gray,
                      width: AppSize.s1,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s50),
                    color: ColorsManger.white,
                  ),
                  child: CustomTextFormFiled(
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorsManger.green,
                    ),
                    controller: searchController,
                    hintText: AppStrings.hintSearch,
                  )),
              const SizedBox(height: AppSize.s40),

              /// Filter Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(ImagesAssets.searchIc),
                ],
              ),

              row(context),
              // const SizedBox(height: AppSize.s20),
              const CustomGreenDropDownButton(items: ['1', '2', '3']),
              // const SizedBox(height: AppSize.s8),
              row(context),
              // const SizedBox(height: AppSize.s20),
              const CustomGreenDropDownButton(items: ['1', '2', '3']),
              // const SizedBox(height: AppSize.s8),
              row(context),
              // const SizedBox(height: AppSize.s20),
              const CustomGreenDropDownButton(items: ['1', '2', '3']),
              // const SizedBox(height: AppSize.s8),
            ],
          )),
    );
  }

  row(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.lg,
              style: TextStyle(
                fontFamily: FontConstants.fontFamily,
                fontSize: FontsSize.s36,
                fontWeight: FontWeightManger.bold,
                color: ColorsManger.secondColor,
              ),
            ),
            const SizedBox(width: AppSize.s30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.logo,
                    style: Theme.of(context).textTheme.titleMedium),
                Text(AppStrings.electronicsGadGet,
                    style: Theme.of(context).textTheme.displaySmall),
              ],
            ),
          ],
        ),
        Text(
          AppStrings.active,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.end,
        )
      ],
    );
  }
}
