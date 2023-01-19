import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeeddodashboard/core/resources/assets_manager.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/constants_manager.dart';
import 'package:zeeddodashboard/core/resources/routes_manager.dart';
import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer =
        Timer(const Duration(seconds: AppConstants.splashDelay), _goToNext);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  _goToNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomLeft,
      children: [
        /// Logo
        Center(
          child: CircleAvatar(
            radius: AppSize.s148,
            backgroundColor: ColorsManger.lightWhite,
            child: Image.asset(ImagesAssets.logo),
          ),
        ),

        /// Ellipse bottom
        SvgPicture.asset(ImagesAssets.ellipse1),
        Positioned(
          left: AppSize.s32,
          bottom: AppSize.s148,
          child: SvgPicture.asset(ImagesAssets.ellipse3),
        ),
        Positioned(
          left: AppSize.s148,
          child: SvgPicture.asset(ImagesAssets.ellipse2),
        ),
      ],
    ));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
