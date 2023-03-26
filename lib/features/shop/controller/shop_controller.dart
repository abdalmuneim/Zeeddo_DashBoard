import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/image_pic.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class ShopController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  File? _imgLogo;
  File? get imgLogo => _imgLogo;
  File? _imgGallery;
  File? get imgGallery => _imgGallery;
  String imageError = '';

  final List<String> _tags = ['tag 1', 'tag 2'];
  List<String> get tags => _tags;
  String _selectedTag = '';
  String get selectedTag => _selectedTag;

  final List<String> _categories = [
    'Category 1',
    'Category 2',
  ];
  List<String> get categories => _categories;
  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;

  final List<String> _subCategories = [
    'subCategories 1',
    'subCategories 2',
  ];
  List<String> get subCategories => _subCategories;
  String _selectedSubCategory = '';
  String get selectedSubCategory => _selectedSubCategory;

  selectTag(String? value) {
    _selectedTag = value!;
    update();
  }

  selectCategory(String? value) {
    _selectedCategory = value!;
    update();
  }

  selectSubCategory(String? value) {
    _selectedSubCategory = value!;
    update();
  }

  getImage(ImageDimensions imageDimensions) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (imageDimensions == ImageDimensions.Logo) {
      _imgLogo = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgLogo != null) {
        imageError = '';
        update();
      }
    }

    if (imageDimensions == ImageDimensions.Any) {
      _imgGallery = await ImagePic.showBottomSheetPic(imageDimensions);
      if (_imgGallery != null) {
        imageError = '';
        update();
      }
    }
    update();
  }

  addNew() {
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
