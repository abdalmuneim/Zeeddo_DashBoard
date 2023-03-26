import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/image_pic.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class LoyaltyProgramController extends GetxController {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _activateSwitch = true;
  bool get activateSwitch => _activateSwitch;

  bool _postSwitch = false;
  bool get postSwitch => _postSwitch;

  bool _completeInfSwitch = false;
  bool get completeInfSwitch => _completeInfSwitch;

  bool _purchaseSwitch = false;
  bool get purchaseSwitch => _purchaseSwitch;

  bool _evaluationSwitch = false;
  bool get evaluationSwitch => _evaluationSwitch;

  bool _discountCouponSwitch = false;
  bool get discountCouponSwitch => _discountCouponSwitch;

  bool _productPressSwitch = false;
  bool get productPressSwitch => _productPressSwitch;

  bool _freeShippingSwitch = false;
  bool get freeShippingSwitch => _freeShippingSwitch;

  bool _reminderTimeSwitch = false;
  bool get reminderTimeSwitch => _reminderTimeSwitch;

  File? _imgAlternative;
  File? get imgAlternative => _imgAlternative;
  String imageError = '';

  /// Activate switcher
  activateSwitcher(val) {
    _activateSwitch = val;
    update();
  }

  /// Post switcher
  postSwitcher(val) {
    _postSwitch = val;
    update();
  }

  /// _complete Inf switcher
  completeInfSwitcher(val) {
    _completeInfSwitch = val;
    update();
  }

  /// purchase  switcher
  purchaseSwitcher(val) {
    _purchaseSwitch = val;
    update();
  }

  /// Evaluation  switcher
  evaluationSwitcher(val) {
    _evaluationSwitch = val;
    update();
  }

  /// _complete Inf switcher
  discountCouponSwitcher(val) {
    _discountCouponSwitch = val;
    update();
  }

  /// purchase  switcher
  productPressSwitcher(val) {
    _productPressSwitch = val;
    update();
  }

  /// Evaluation  switcher
  freeShippingSwitcher(val) {
    _freeShippingSwitch = val;
    update();
  }

  /// reminder time  switcher
  reminderTimeSwitcher(val) {
    _reminderTimeSwitch = val;
    update();
  }

  getImage() async {
    FocusManager.instance.primaryFocus?.unfocus();

    _imgAlternative = await ImagePic.showBottomSheetPic(ImageDimensions.Any);
    if (_imgAlternative != null) {
      imageError = '';
      update();
    }
    update();
  }

  submit() {
    _isLoading = true;
    update();

    Future.delayed(
      Duration(seconds: 3),
      () {
        _isLoading = false;
        update();
        Get.toNamed(AppRoutes.dashboard);
      },
    );
  }

  @override
  void onReady() {
    Utils.askPermission();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
