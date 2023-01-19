import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/routes_manager.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSize.s18),
        child: ListView(
          children: [
            const SizedBox(
              height: AppSize.s60,
            ),

            /// Dash Board
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.dashBoard);
              },
              title: Text(AppStrings.dashBoard,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),

            /// Add Branding
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.addBrandingDetails);
              },
              title: const Text(AppStrings.addBrandingDetails),
            ),

            /// Add Ur Shop
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.addUrShop);
              },
              title: const Text(AppStrings.addUShop),
            ),

            /// Product
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.product);
              },
              title: const Text(AppStrings.products),
            ),

            /// setting
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.settingRoute);
              },
              title: const Text(AppStrings.setting),
            ),
          ],
        ),
      ),
    );
  }
}
