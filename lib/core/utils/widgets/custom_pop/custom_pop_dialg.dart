import 'package:flutter/material.dart';

import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class CustomPOPDialog {
  _pOPDialog(
    BuildContext context, {
    required Widget titleWidget,
    required Widget contentWidget,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: titleWidget,
        content: contentWidget,
      ),
    );
  }

  pOPDialog(
    context, {
    String? title = '',
    required Widget body,
    bool? bDivider = false,
  }) {
    return _pOPDialog(context,
        titleWidget: Container(
          width: SizeConfig.screenWidth,
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p12,
          ),
          color: ColorsManger.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title!,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: ColorsManger.black,
                  size: AppSize.s18,
                ),
              ),
            ],
          ),
        ),
        contentWidget: Wrap(
          alignment: WrapAlignment.end,
          children: [
            bDivider! ? const Divider() : const SizedBox(),
            body,
          ],
        ));
  }
}
