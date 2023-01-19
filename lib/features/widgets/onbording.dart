import 'package:flutter/material.dart';
import 'package:zeeddodashboard/core/resources/values_manager.dart';
import 'package:zeeddodashboard/features/onboarding/onboarding_view.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({Key? key, required this.sliderObject})
      : super(key: key);
  final SliderObject sliderObject;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: AppSize.s50),

        /// Image

        const SizedBox(height: AppSize.s50),

        /// Text Title
        Text(
          sliderObject.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: AppSize.s18),

        /// Text SubTitle
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: AppSize.s32),
      ],
    );
  }
}
