import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/color_manager.dart';

class CustomAppBar extends StatelessWidget  with PreferredSizeWidget {

  const CustomAppBar({Key? key, this.title, this.actions}) : super(key: key);
  final Widget? title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: ColorsManger.white,
      ),
      title: title,
      elevation: 0,
      actions: actions,
      backgroundColor: ColorsManger.black,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
