import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/image_pic.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class BrandingController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  final currencyCRT = TextEditingController(text: Constants.currency);
  String imageError = '';

  /// on change descriptions
  onChangePhoto(File img) {
    if (imageError.isNotEmpty) {
      imageError = '';
      update();
    }
  }

  updateBrand() {
    // if (_formKey.currentState!.validate()) {
    _isLoading = true;
    update();
    Future.delayed(Duration(seconds: 4), () async {
      ToastManager.showSuccess('success Data');
      _isLoading = false;
      update();
    });
    // } else {
    // ToastManager.showSuccess('Check Data');
    // }
  }

  File? _imgSlider;
  File? get imgSlider => _imgSlider;
  File? _imgFav;
  File? get imgFav => _imgFav;
  File? _imgLogo;
  File? get imgLogo => _imgLogo;
  File? _imgAlternative;
  File? get imgAlternative => _imgAlternative;

  getImage(ImageDimensions imageDimensions) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (imageDimensions == ImageDimensions.Logo) {
      _imgLogo = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgLogo != null) {
        imageError = '';
        update();
      }
    }
    if (imageDimensions == ImageDimensions.Slider) {
      _imgSlider = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgSlider != null) {
        imageError = '';
        update();
      }
    }
    if (imageDimensions == ImageDimensions.Fav) {
      _imgFav = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgFav != null) {
        imageError = '';
        update();
      }
    }
    if (imageDimensions == ImageDimensions.Alternative) {
      _imgAlternative = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgAlternative != null) {
        imageError = '';
        update();
      }
    }
    update();
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
