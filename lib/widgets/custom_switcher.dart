import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shahrukh_s_application1/core/utils/color_constant.dart';

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({Key? key, required this.status, required this.onToggle})
      : super(key: key);
  final bool status;
  final void Function(bool) onToggle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.black, width: .5),
      ),
      child: FlutterSwitch(
        value: status,
        borderRadius: 30.0,
        padding: 0.0,
        height: 30,
        activeToggleColor: ColorConstant.buttonColor,
        activeColor: ColorConstant.greyColor,
        inactiveColor: Colors.white,
        onToggle: onToggle,
        inactiveToggleColor: ColorConstant.greyColor,
      ),
    );
  }
}
