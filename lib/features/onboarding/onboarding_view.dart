import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zeeddodashboard/core/resources/app_strings.dart';
import 'package:zeeddodashboard/core/resources/assets_manager.dart';
import 'package:zeeddodashboard/core/resources/color_manager.dart';
import 'package:zeeddodashboard/core/resources/font_manager.dart';
import 'package:zeeddodashboard/core/resources/routes_manager.dart';
import 'package:zeeddodashboard/core/resources/size_config.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  /// List of Data PageView
  late final List<SliderObject> _list = _getSliderData();

  /// controller for PageView Controller
  final PageController _pageController = PageController();

  /// Current PageView
  int currentIndex = 0;

  /// Function Return Title, Subtitle and image Data form AppString and ImageAssets for PageView
  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppStrings.branding,
          subTitle: AppStrings.onBoardingSubTitle1,
          widget: Center(
            child: Text(
              AppStrings.brandingDetails + AppStrings.subBrandingDetails,
              style: _style,
            ),
          ),
        ),
        SliderObject(
          title: AppStrings.addNewProduct,
          subTitle: AppStrings.onBoardingSubTitle2,
          widget: Text(
            AppStrings.addProductDetails + AppStrings.subAddProductDetails,
            style: _style,
          ),
        ),
        SliderObject(
          title: AppStrings.themeCustomize,
          subTitle: AppStrings.onBoardingSubTitle3,
          widget: Text(
            AppStrings.themCustomize + AppStrings.subThemCustomize,
            style: _style,
          ),
        ),
      ];

  final TextStyle _style = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: FontsSize.s16,
    fontWeight: FontWeightManger.bold,
    color: ColorsManger.black,
    height: SizeConfig.screenHeight / 300,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: ColorsManger.lightPrimary,
      appBar: AppBar(
        title: Text(
          _list[currentIndex].title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.bottomLeft,
          image: AssetImage(ImagesAssets.bg),
        )),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _list.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                /// Return PageView Item (OnBoardingItem)
                return Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: AppPadding.p12,
                            bottom: AppPadding.p50,
                            left: AppPadding.p30,
                            right: AppPadding.p30),
                        alignment: Alignment.center,
                        child: _list[index].widget),
                  ],
                );
              },
            ),

            /// indicator Slider Icons
            _getIconsIndicators(),
          ],
        ),
      ),
    );
  }

  /// return Container for all icon bottom left, right arrow and solid, hollow circle icons
  Widget _getIconsIndicators() {
    return Container(
      color: ColorsManger.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          /// Skip Button
          TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.registerRoute);
              },
              child: Text(
                AppStrings.skip,
                style: Theme.of(context).textTheme.labelMedium,
              )),

          /// Circles Indicators
          Row(children: [
            for (int i = 0; i < _list.length; i++)
              Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: _getCircleIcon(i)),
          ]),

          /// right Arrow Icon
          currentIndex < _list.length - 1
              ? TextButton(
                  onPressed: () {
                    if (currentIndex < _list.length) currentIndex++;
                    _pageController.animateToPage(currentIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  child: Text(
                    AppStrings.next,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ))
              : TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.registerRoute);
                  },
                  child: Text(
                    AppStrings.getStarted,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  )),
        ],
      ),
    );
  }

  /// Get previous Index to go to Next PageView
  int _getNextIndex() {
    int nextIndex = currentIndex++;
    if (nextIndex == _list.length) {
      Navigator.pushReplacementNamed(context, Routes.registerRoute);
    }
    return nextIndex;
  }

  /// return Circle Icons hollow or solid icon
  Widget _getCircleIcon(int index) {
    if (index == currentIndex) {
      return SvgPicture.asset(ImagesAssets.currentIc);
    } else {
      return SvgPicture.asset(ImagesAssets.hollowCircleIc);
    }
  }

  // return icon bottom left, right arrow
  _arrowIcon({required Widget icon, required Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: InkWell(
        onTap: () => onTap!(),
        child: SizedBox(
          width: AppSize.s20,
          height: AppSize.s20,
          child: icon,
        ),
      ),
    );
  }
}

class SliderObject {
  final String title;
  final String subTitle;
  final Widget widget;

  SliderObject(
      {required this.title, required this.subTitle, required this.widget});
}
