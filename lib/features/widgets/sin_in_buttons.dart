import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/font_manager.dart';

import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class SigInButtons extends StatelessWidget {
  const SigInButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /// Google Button
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  fontFamily: FontConstants.fontFamily,
                  fontSize: FontsSize.s16,
                  fontWeight: FontWeightManger.bold,
                  color: ColorsManger.black,
                ),
                backgroundColor: ColorsManger.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s100))),
            onPressed: () {},
            child: SizedBox(
              height: SizeConfig.screenHeight / 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: AppSize.s22,
                      height: AppSize.s32,
                      decoration: BoxDecoration(
                          color: ColorsManger.lightBlack,
                          shape: BoxShape.circle),
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: AppSize.s12,
                        color: ColorsManger.black,
                      )),
                  const SizedBox(width: AppSize.s8),
                ],
              ),
            )),
        const SizedBox(width: AppSize.s32),

        /// Facebook Button
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  fontFamily: FontConstants.fontFamily,
                  fontSize: FontsSize.s16,
                  fontWeight: FontWeightManger.bold,
                  color: ColorsManger.black,
                ),
                backgroundColor: ColorsManger.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s100))),
            onPressed: () {},
            child: SizedBox(
              height: SizeConfig.screenHeight / 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: AppSize.s22,
                      height: AppSize.s32,
                      decoration: BoxDecoration(
                          color: ColorsManger.lightBlack,
                          shape: BoxShape.circle),
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        size: AppSize.s12,
                        color: ColorsManger.black,
                      )),
                  const SizedBox(width: AppSize.s8),
                ],
              ),
            ))
      ],
    );
  }
}
