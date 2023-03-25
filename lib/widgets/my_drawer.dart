import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
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
          ListView(
            children: [
              /// dashboard
              ListTile(
                title: Text(AppString.dashboard),
                leading: Icon(Icons.category),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.dashboard);
                },
              ),

              /// loyalty
              ListTile(
                title: Text(AppString.loyaltyProgram),
                leading: Icon(Icons.production_quantity_limits),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.loyaltyProgram);
                },
              ),

              /// theme_customize
              ListTile(
                title: Text(AppString.themeCustomize),
                leading: Icon(Icons.theater_comedy_outlined),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.themeCustomize);
                },
              ),

              /// Add Product
              ListTile(
                title: Text(AppString.addProduct),
                leading: Icon(Icons.add_shopping_cart_rounded),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.addProduct);
                },
              ),

              /// branding
              ListTile(
                title: Text(AppString.branding),
                leading: Icon(Icons.branding_watermark),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.branding);
                },
              ),

              ///Coupon
              ListTile(
                title: Text(AppString.coupon),
                leading: Icon(Icons.discount_outlined),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.coupon);
                },
              ),

              /// Subscription
              ListTile(
                title: Text(AppString.subscription),
                leading: Icon(Icons.monetization_on_outlined),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.subscription);
                },
              ),

              /// Staff
              ListTile(
                title: Text(AppString.staff),
                leading: Icon(Icons.people_alt_outlined),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.staff);
                },
              ),

              /// Shop
              ListTile(
                title: Text(AppString.shop),
                leading: Icon(Icons.shopping_basket_outlined),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.shop);
                },
              ),

              /// Subscription
              ListTile(
                title: Text(AppString.product),
                leading: Icon(Icons.heat_pump_rounded),
                onTap: () {
                  scaffoldKey.currentState?.closeDrawer();
                  Get.toNamed(AppRoutes.product);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
