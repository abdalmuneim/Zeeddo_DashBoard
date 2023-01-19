import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class CustomContainerTextFormFiled extends StatelessWidget {
  const CustomContainerTextFormFiled({
    super.key,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.prefixIcon,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.bMargin = true,
    this.enabled = true,
    this.width = double.infinity,
  });

  final TextEditingController controller;
  final String hintText;
  final Widget? labelText;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType? textInputType;
  final bool? bMargin;
  final bool? enabled;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: bMargin!
          ? const EdgeInsets.symmetric(horizontal: AppMargin.m12)
          : null,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s8),
          border: Border.all(
            color: ColorsManger.gray,
            width: AppSize.s1,
          )),
      child: CustomTextFormFiled(
        controller: controller,
        textInputType: textInputType,
        obscureText: obscureText,
        prefixIcon: prefixIcon,
        hintText: hintText,
        bMargin: bMargin,
        labelText: labelText,
      ),
    );
  }
}

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    Key? key,
    required this.controller,
    required this.hintText,
    this.labelText,
    this.prefixIcon,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.bMargin = true,
    this.enabled = true,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final Widget? labelText;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool? enabled;
  final TextInputType? textInputType;
  final bool? bMargin;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabled: enabled!,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          label: labelText,
          labelStyle: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
