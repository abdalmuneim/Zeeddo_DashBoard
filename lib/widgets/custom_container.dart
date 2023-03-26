import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/utils/color_constant.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      width: double.infinity,
      height: 53,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstant.redColor,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
