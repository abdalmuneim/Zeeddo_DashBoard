import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/my_drawer.dart';

import '../controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class DashboardView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        builder: (DashboardController controller) {
      return Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(scaffoldKey: _scaffoldKey),
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  ImageConstant.smallCircle,
                ),
                SvgPicture.asset(
                  ImageConstant.bigCircle,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 22, top: 90, right: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: AppString.dashboard,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      title: AppString.sellingOnline,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    250.sh,
                    ElevatedButton(
                      onPressed: () {},
                      child: CustomText(
                        title: AppString.addNew,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: ColorConstant.mainApp,
                child: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu_outlined,
                    size: 27,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
