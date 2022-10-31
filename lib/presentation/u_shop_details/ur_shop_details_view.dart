import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeeddodashboard/presentation/resources/app_strings.dart';
import 'package:zeeddodashboard/presentation/resources/color_manager.dart';
import 'package:zeeddodashboard/presentation/resources/values_manager.dart';
import 'package:zeeddodashboard/presentation/widgets/custom_app_bar.dart';
import 'package:zeeddodashboard/presentation/widgets/my_drawer.dart';

import '../resources/assets_manager.dart';

class UrShopDetailsView extends StatelessWidget {
  const UrShopDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManger.white,
      drawer: const MyDrawer(),
      appBar: CustomAppBar(
        title: Image.asset(ImagesAssets.horiLogo),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.language_rounded))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: AppMargin.m30),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.shopDetails,
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        )),
      ),
    );
  }
}
