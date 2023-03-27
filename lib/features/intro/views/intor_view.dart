import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';
import 'package:shahrukh_s_application1/core/resources/color_constant.dart';

import 'package:shahrukh_s_application1/features/intro/controllers/intro_controller.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';

class IntroView extends StatefulWidget {
  IntroView({Key? key}) : super(key: key);

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  /// List of Data PageView
  late List<SliderObject> _list = _getSliderData();

  /// controller for PageView Controller
  final PageController _pageController = PageController();

  /// Current PageView
  int currentIndex = 0;

  onPageChanged(index) {
    setState(() {
      currentIndex = index;
    });
  }

  /// Function Return Title, Subtitle and image Data form AppString and ImageAssets for PageView
  List<SliderObject> _getSliderData() => [
        SliderObject(
          title: AppString.title1,
          subTitle: AppString.des1,
          image: ImageConstant.imgOnboarding1,
        ),
        SliderObject(
          title: AppString.title2,
          subTitle: AppString.des2,
          image: ImageConstant.imgOnboarding2,
        ),
        SliderObject(
          title: AppString.title3,
          subTitle: AppString.des3,
          image: ImageConstant.imgOnboarding3,
        ),
        SliderObject(
          title: AppString.title4,
          subTitle: AppString.des4,
          image: ImageConstant.imgOnboarding4,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(builder: (IntroController controller) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.introBg,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 50, child: Image.asset(ImageConstant.logoWithContainer)),
              PageView.builder(
                controller: _pageController,
                itemCount: _list.length,
                onPageChanged: onPageChanged,
                itemBuilder: (context, index) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 200),

                        /// Text Title
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: CustomText(
                            title: _list[index].title,
                            color: Colors.white,
                            textAlign: TextAlign.start,
                            fontSize: 40,
                          ),
                        ),
                        const SizedBox(height: 18),

                        /// Text SubTitle
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: CustomText(
                            title: _list[index].subTitle,
                            textAlign: TextAlign.start,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),

                        /// Image
                        Image.asset(_list[index].image),
                        Spacer(),
                      ],
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 100,
                child: _getIconsIndicators(),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: TextButton(
                  onPressed: () => controller.skip(),
                  child: CustomText(
                    title: AppString.skip,
                    color: ColorConstant.buttonColor,
                    fontSize: 25,
                  ),
                ),
              ),
              if (currentIndex != _list.length)
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: IconButton(
                    onPressed: () => controller.skip(),
                    icon: Image.asset(
                      ImageConstant.infoIC,
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }

  /// return Container for all icon bottom left, right arrow and solid, hollow circle icons
  Widget _getIconsIndicators() {
    return GetBuilder<IntroController>(builder: (IntroController controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Circles Indicators
          for (int i = 0; i < _list.length; i++)
            Padding(padding: const EdgeInsets.all(8), child: getCircleIcon(i)),
        ],
      );
    });
  }

  /// return Circle Icons hollow or solid icon
  Widget getCircleIcon(int index) {
    if (index == currentIndex) {
      return SvgPicture.asset(ImageConstant.iC);
    } else {
      return SvgPicture.asset(
        ImageConstant.iC2,
        color: ColorConstant.mainApp,
      );
    }
  }
}

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({Key? key, required this.sliderObject})
      : super(key: key);
  final SliderObject sliderObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),

        /// Image
        Image.asset(sliderObject.image),

        /// Text Title
        Text(
          sliderObject.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 18),

        /// Text SubTitle
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

class SliderObject {
  final String title;
  final String subTitle;
  final String image;

  SliderObject(
      {required this.title, required this.subTitle, required this.image});
}
