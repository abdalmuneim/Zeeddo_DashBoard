import 'package:flutter_svg/flutter_svg.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/extensions.dart';
import 'package:shahrukh_s_application1/widgets/custom_switcher.dart';
import 'package:shahrukh_s_application1/widgets/custom_text.dart';
import 'package:shahrukh_s_application1/widgets/custom_text_form_filed.dart';
import 'package:shahrukh_s_application1/widgets/my_drawer.dart';

import '../controller/loyalty_program_controller.dart';
import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';

class LoyaltyProgramView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoyaltyProgramController>(
        builder: (LoyaltyProgramController controller) {
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

            /// content
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 22, top: 80, right: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///title
                    CustomText(
                      title: AppString.loyaltyProgram,
                      color: ColorConstant.mainApp,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),

                    /// general options
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.generalOptions,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.activateTheWalkSystem,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          title: AppString.bodySystem,
                          color: ColorConstant.lightRed,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          textAlign: TextAlign.start,
                        ),
                        CustomSwitcher(
                          status: controller.activateSwitch,
                          onToggle: controller.activateSwitcher,
                        ),
                      ],
                    ),
                    11.sh,
                    CustomText(
                      title: AppString.systemName,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.loyaltySystem,
                    ),
                    13.sh,
                    CustomText(
                      title: AppString.promotional,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    4.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.promotionalDesc,
                    ),
                    18.sh,
                    CustomText(
                      title: AppString.imgSystem,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.imgSystemBody,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    10.sh,
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      highlightColor: ColorConstant.mainApp,
                      hoverColor: ColorConstant.mainApp,
                      splashColor: ColorConstant.mainApp,
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: getVerticalSize(100),
                        decoration: BoxDecoration(
                          color: ColorConstant.containerColor.withOpacity(.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomText(
                          title: AppString.dragAndDrop,
                          color: ColorConstant.buttonColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    26.sh,

                    /// points
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.points,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.blink,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    12.sh,
                    CustomText(
                      title: AppString.earnPoints,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.earnPointsDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: CustomText(
                            title: AppString.descButton,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.points,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.blink,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,
                    SizedBox(
                      width: getHorizontalSize(100),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CustomText(
                          title: AppString.addNew,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    15.sh,
                    CustomText(
                      title: AppString.eyeClintDeserves,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.eyeClintDeservesDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    11.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.number,
                      isNumberOnly: true,
                    ),
                    15.sh,
                    CustomText(
                      title: AppString.pointsAdvice,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.pointsAdviceDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    11.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.number,
                      isNumberOnly: true,
                    ),
                    35.sh,

                    /// post
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            title: AppString.post,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.postPoint,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.postSwitch,
                          onToggle: controller.postSwitcher,
                        ),
                      ],
                    ),
                    16.sh,

                    /// complete Info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.completeInfo,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.completeInfoPoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.completeInfSwitch,
                          onToggle: controller.completeInfSwitcher,
                        ),
                      ],
                    ),
                    16.sh,

                    /// About the purchase
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.purchase,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.purchasePoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.purchaseSwitch,
                          onToggle: controller.purchaseSwitcher,
                        ),
                      ],
                    ),
                    16.sh,

                    /// Evaluation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.evaluation,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.evaluationPoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.evaluationSwitch,
                          onToggle: controller.evaluationSwitcher,
                        ),
                      ],
                    ),
                    26.sh,

                    /// Rewards
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.rewards,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.rewardsDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    12.sh,
                    CustomText(
                      title: AppString.rewards,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.rewardsDesc2,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: CustomText(
                            title: AppString.improvedButton,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    14.sh,

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.rewards,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.blink,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,

                    SizedBox(
                      width: getHorizontalSize(100),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CustomText(
                          title: AppString.addNew,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    15.sh,

                    CustomText(
                      title: AppString.promotionalTitle,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),

                    11.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.promotionalLabel,
                    ),
                    15.sh,
                    CustomText(
                      title: AppString.promotionalDesc,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),

                    11.sh,
                    CustomTextFormField(
                      enabledBorder: true,
                      hintText: '',
                      labelText: AppString.promotionalDescLabel,
                    ),
                    35.sh,

                    /// discountCoupon Info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.discountCoupon,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.discountCouponPoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.discountCouponSwitch,
                          onToggle: controller.discountCouponSwitcher,
                        ),
                      ],
                    ),
                    16.sh,

                    /// product Press
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.productPress,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.productPressPoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.productPressSwitch,
                          onToggle: controller.productPressSwitcher,
                        ),
                      ],
                    ),
                    16.sh,

                    /// freeShipping
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.freeShipping,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.freeShippingPoints,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomSwitcher(
                          status: controller.freeShippingSwitch,
                          onToggle: controller.freeShippingSwitcher,
                        ),
                      ],
                    ),
                    26.sh,

                    /// Reminder
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.reminder,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),

                    12.sh,
                    CustomText(
                      title: AppString.reminder,
                      color: ColorConstant.buttonColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    CustomText(
                      title: AppString.reminderDesc,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: CustomText(
                            title: AppString.addReminder,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: ColorConstant.buttonColor,
                            size: 11,
                          ),
                          4.sw,
                          CustomText(
                            title: AppString.theReminder,
                            color: ColorConstant.red,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      title: AppString.blink,
                      color: ColorConstant.lightRed,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      textAlign: TextAlign.start,
                    ),
                    14.sh,
                    SizedBox(
                      width: getHorizontalSize(170),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CustomText(
                          title: AppString.addNewReminder,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    35.sh,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.theText,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.reminderChannel,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        CustomText(
                          title: AppString.timeReminder,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    16.sh,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(150),
                          child: CustomText(
                            maxLines: 2,
                            title: AppString.theText,
                            color: ColorConstant.buttonColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        CustomText(
                          title: AppString.reminderChannel,
                          color: ColorConstant.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        Column(
                          children: [
                            CustomText(
                              title: AppString.timeReminder,
                              fontSize: 12,
                            ),
                            CustomSwitcher(
                              status: controller.reminderTimeSwitch,
                              onToggle: controller.reminderTimeSwitcher,
                            ),
                          ],
                        ),
                      ],
                    ),
                    44.sh,
                    Center(
                      child: SizedBox(
                        width: getHorizontalSize(250),
                        child: ElevatedButton(
                          onPressed: controller.isLoading
                              ? () {}
                              : () => controller.submit(),
                          child: controller.isLoading
                              ? CircularProgressIndicator()
                              : CustomText(
                                  title: AppString.submit,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                        ),
                      ),
                    ),
                    31.sh,
                  ],
                ),
              ),
            ),
            /* Positioned(
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
            ), */
          ],
        ),
      );
    });
  }
}
