import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../resources/color_manager.dart';
import '../resources/size_config.dart';
import '../resources/values_manager.dart';

class CustomGreenDropDownButton<T> extends StatefulWidget {
  const CustomGreenDropDownButton({Key? key, required this.items})
      : super(key: key);
  final List<T> items;

  @override
  State<CustomGreenDropDownButton> createState() =>
      _CustomGreenDropDownButtonState();
}

class _CustomGreenDropDownButtonState<T>
    extends State<CustomGreenDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          color: ColorsManger.green,
          borderRadius: BorderRadius.circular(AppSize.s8)),
      child: Row(
        children: [
          const SizedBox(width: AppSize.s8),
           Icon(FontAwesomeIcons.box,color: ColorsManger.white,),
          const SizedBox(width: AppSize.s8),
          Expanded(
            child: DropdownButtonFormField<T>(
              key: Key(widget.items.last),
              style: Theme.of(context).textTheme.labelLarge,
              iconEnabledColor: ColorsManger.white,
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
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  var newValue;
}
