import 'package:flutter/material.dart';

import 'package:zeeddodashboard/core/resources/color_manager.dart';

import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class CustomWhiteDropDownButton<T> extends StatefulWidget {
  const CustomWhiteDropDownButton({
    Key? key,
    required this.items,
    this.bMargin = true,
    this.enabled = true,
  }) : super(key: key);
  final List<T> items;
  final bool? bMargin;
  final bool? enabled;

  @override
  State<CustomWhiteDropDownButton> createState() =>
      _CustomWhiteDropDownButtonState();
}

class _CustomWhiteDropDownButtonState<T>
    extends State<CustomWhiteDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: widget.bMargin!
          ? const EdgeInsets.symmetric(horizontal: AppMargin.m12)
          : null,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s8),
          border: Border.all(
            color: ColorsManger.gray,
            width: AppSize.s1,
          )),
      child: DropdownButtonFormField<T>(
        icon: const Icon(Icons.keyboard_arrow_down),
        key: Key(widget.items.last),
        value: newValue,
        items: widget.items
            .map((e) => DropdownMenuItem<T>(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            newValue = value;
          });
        },
        decoration: InputDecoration(
          enabled: widget.enabled!,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }

  var newValue;
}
