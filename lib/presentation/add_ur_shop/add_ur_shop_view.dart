import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zeeddodashboard/presentation/resources/routes_manager.dart';

import '../resources/font_manager.dart';
import '../resources/size_config.dart';
import '../widgets/custom_white_drop_down_button.dart';
import '/presentation/widgets/custom_app_bar.dart';
import '/presentation/widgets/my_drawer.dart';
import '../widgets/custom_text_form_filed.dart';
import '/presentation/resources/app_strings.dart';
import '/presentation/resources/assets_manager.dart';
import '/presentation/resources/values_manager.dart';
import '../resources/color_manager.dart';

class AddUrShop extends StatefulWidget {
  const AddUrShop({Key? key}) : super(key: key);

  @override
  State<AddUrShop> createState() => _AddUrShopState();
}

class _AddUrShopState extends State<AddUrShop> {
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController shopAliasController = TextEditingController();
  final TextEditingController ownerNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.white,
      appBar: CustomAppBar(
        title: Image.asset(ImagesAssets.horiLogo),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.language_rounded))
        ],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: AppMargin.m36),
          child: ListView(
            children: [
              const SizedBox(height: AppSize.s25),

              /// Title
              Text(AppStrings.addUShop,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge),
              const SizedBox(height: AppSize.s25),

              /// Shop Name
              Text(AppStrings.shopName,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),

              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: shopNameController,
                  hintText: AppStrings.hintShopName),
              const SizedBox(height: AppSize.s32),

              /// Shop Alias
              Text(AppStrings.shopAlias,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: shopAliasController,
                  hintText: AppStrings.hintShopAlias),
              const SizedBox(height: AppSize.s32),

              /// Owner Name
              Text(AppStrings.ownerName,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: ownerNameController,
                  hintText: AppStrings.hintOwnerName),
              const SizedBox(height: AppSize.s32),

              /// Mobile
              Text(AppStrings.mobile,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: mobileController,
                  hintText: AppStrings.hintMobileNum),
              const SizedBox(height: AppSize.s32),

              /// email
              Text(AppStrings.email,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: emailController,
                  hintText: AppStrings.hintE),
              const SizedBox(height: AppSize.s32),

              /// Address
              Text(AppStrings.address,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: addressController,
                  hintText: AppStrings.hintAddress),
              const SizedBox(height: AppSize.s32),

              /// Country
              Text(AppStrings.country,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              const CustomWhiteDropDownButton(
                  bMargin: false, items: ['1', '2', '3']),
              const SizedBox(height: AppSize.s32),

              /// City
              Text(AppStrings.city,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              const CustomWhiteDropDownButton(
                  bMargin: false, items: ['1', '2', '3']),
              const SizedBox(height: AppSize.s32),

              /// Postal Code
              Text(AppStrings.postalCode,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              CustomContainerTextFormFiled(
                  bMargin: false,
                  controller: postalCodeController,
                  hintText: AppStrings.hintPostalCode),
              const SizedBox(height: AppSize.s55),

              /// text Shop Information
              Text(AppStrings.shopInfo,
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge),
              const SizedBox(height: AppSize.s8),
              Divider(thickness: 2, height: 2, color: ColorsManger.black),
              const SizedBox(height: AppSize.s32),

              /// Get Logo
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
                    Text(AppStrings.pictureLogo,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.p14,
                            horizontal: AppPadding.p8),
                        width: SizeConfig.screenWidth / 4,
                        decoration: BoxDecoration(
                          color: ColorsManger.lightPrimary,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(AppSize.s8),
                              bottomRight: Radius.circular(AppSize.s8)),
                        ),
                        child: Text(AppStrings.browser,
                            textAlign: TextAlign.center,
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s32),

              /// Category
              Text(AppStrings.category,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              const CustomWhiteDropDownButton(
                  bMargin: false, items: ['1', '2', '3']),
              const SizedBox(height: AppSize.s32),

              /// Sub Category
              Text(AppStrings.subCategory,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              const CustomWhiteDropDownButton(
                  bMargin: false, items: ['1', '2', '3']),
              const SizedBox(height: AppSize.s32),

              /// Tags
              Text(AppStrings.tags,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge),
              const SizedBox(height: AppSize.s8),
              const CustomWhiteDropDownButton(
                  bMargin: false, items: ['1', '2', '3']),
              const SizedBox(height: AppSize.s32),

              /// text Upload Pic
              Text(AppStrings.uploadPic,
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge),
              const SizedBox(height: AppSize.s8),
              Divider(thickness: 2, height: 2, color: ColorsManger.black),
              const SizedBox(height: AppSize.s32),

              /// Get Logo
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
                    Text(AppStrings.pictureLogo,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppPadding.p14,
                            horizontal: AppPadding.p8),
                        width: SizeConfig.screenWidth / 4,
                        decoration: BoxDecoration(
                          color: ColorsManger.lightPrimary,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(AppSize.s8),
                              bottomRight: Radius.circular(AppSize.s8)),
                        ),
                        child: Text(AppStrings.browser,
                            textAlign: TextAlign.center,
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s32),

              /// text About shop
              Text(AppStrings.aboutShop,
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayLarge),
              const SizedBox(height: AppSize.s8),
              Divider(thickness: 2, height: 2, color: ColorsManger.black),
              const SizedBox(height: AppSize.s32),

              Container(
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s8),
                    border: Border.all(
                      color: ColorsManger.gray,
                      width: AppSize.s1,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    /// Text Formatting
                    Container(
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                        color: ColorsManger.lightPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(AppSize.s8),
                            topLeft: Radius.circular(AppSize.s8)),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [

                          /// Drop Down Text Letter
                          DropdownButton<String>(
                            value: newValue,
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge,
                            items: _listLetter
                                .map((e) =>
                                DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                ))
                                .toList(),
                            onChanged: (String? value) {
                              newValue = value!;
                            },
                          ),

                          Text(AppStrings.vertiLine,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge),

                          /// Text Types
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.bold,
                                size: AppSize.s14,
                              )),
                          // italy
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.italic,
                                size: AppSize.s14,
                              )),
                          // under Line
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.underline,
                                size: AppSize.s14,
                              )),

                          Text(AppStrings.vertiLine,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge),

                          /// Icon Button Align Text
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.format_align_left,
                                size: AppSize.s14,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.format_align_center,
                                size: AppSize.s14,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.format_align_right,
                                size: AppSize.s14,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.format_align_justify,
                                size: AppSize.s14,
                              )),
                        ],
                      ),
                    ),

                    Divider(
                        thickness: 0.6, height: 0.0, color: ColorsManger.black),

                    /// Text Form Filed
                    TextFormField(
                      controller: shopAliasController,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: AppStrings.description,
                        hintStyle: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium,
                      ),
                      maxLines: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s32),

              /// Add Button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: AppMargin.m60),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.urShopDetails);
                  },
                  child: const Text(
                    AppStrings.addNew,
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s32),
            ],
          ),
        ),
      ),
    );
  }

  final List _listLetter = ['A', 'B', 'B'];

  TextEditingController aboutShopController = TextEditingController();

  var newValue = 'A';
}
