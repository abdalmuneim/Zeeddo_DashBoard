import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/assets_manager.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/font_manager.dart';
import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// total shops
                Expanded(
                  child: Container(
                    height: SizeConfig.screenHeight / 7,
                    color: ColorsManger.secondColor,
                    padding: EdgeInsets.all(10),
                    child: DottedBorder(
                      borderType: BorderType.Rect,
                      dashPattern: const [5, 5, 5, 5],
                      strokeWidth: AppSize.s1,
                      color: ColorsManger.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.totalShops,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(color: ColorsManger.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '3',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(color: ColorsManger.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),

                /// total products
                Expanded(
                  child: Container(
                    height: SizeConfig.screenHeight / 7,
                    color: ColorsManger.error,
                    padding: EdgeInsets.all(10),
                    child: DottedBorder(
                      borderType: BorderType.Rect,
                      dashPattern: const [5, 5, 5, 5],
                      strokeWidth: AppSize.s1,
                      color: ColorsManger.white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.totalProducts,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(color: ColorsManger.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '3',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(color: ColorsManger.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),

            /// shops
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorsManger.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: ColorsManger.gray,
                          )
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          ImagesAssets.logo,
                          width: SizeConfig.screenWidth / 6,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Zeedo App',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(fontSize: FontsSize.s14),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Template three',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontSize: FontsSize.s14,
                                  color: ColorsManger.gray),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Active',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontSize: FontsSize.s14,
                                  color: ColorsManger.gray),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsManger.error),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)))),
                              onPressed: () {},
                              child: Text(AppStrings.products),
                            ),
                            SizedBox(width: 8),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsManger.blue),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)))),
                              onPressed: () {},
                              child: Text(AppStrings.customize),
                            ),
                            SizedBox(width: 8),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsManger.yalla),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)))),
                              onPressed: () {},
                              child: Text(AppStrings.webView),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
