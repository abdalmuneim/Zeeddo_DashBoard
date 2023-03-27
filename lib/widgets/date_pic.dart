import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/widgets/custom_container.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';

class DateTimePic extends StatelessWidget {
  const DateTimePic({
    Key? key,
    required this.onChangedDate,
    this.initialDate,
    required this.selectDateTime,
  }) : super(key: key);

  final void Function()? onChangedDate;
  final DateTime? initialDate;
  final String selectDateTime;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChangedDate,
      child: CustomContainer(
        child: CustomText(
          title: selectDateTime,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorConstant.labelTextColor,
        ),
      ),
    );
  }
}
