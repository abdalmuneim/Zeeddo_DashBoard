import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/app_string.dart';
import 'package:shahrukh_s_application1/core/utils/color_util.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

class ProductController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  final currencyINR = TextEditingController(text: Constants.currencyINR);
  Color _productColor = ColorConstant.red;
  Color get productColor => _productColor;
  bool _isFeature = false;
  bool _isPopular = false;
  bool _isShippingFree = false;
  bool get isFeature => _isFeature;
  bool get isPopular => _isPopular;
  bool get isShippingFree => _isShippingFree;

  final List<String> _stores = ['1', '2'];
  List<String> get stores => _stores;
  String _selectedStore = '';
  String get selectedStore => _selectedStore;

  final List<String> _status = [AppString.available, AppString.notAvailable];
  List<String> get status => _status;
  String _selectedStat = AppString.available;
  String get selectedStat => _selectedStat;

  final List<String> _dimensionUnit = ['CM'];
  List<String> get dimensionUnit => _dimensionUnit;
  String _selectedDimensionUnit = 'CM';
  String get selectedDimensionUnit => _selectedDimensionUnit;

  final List<String> _weightUnit = [AppString.gram];
  List<String> get weightUnit => _weightUnit;
  String _selectedWeightUnit = AppString.gram;
  String get selectedWeightUnit => _selectedWeightUnit;

  bool _localSellerWarranty = false;
  bool _noWarranty = false;
  bool _manufacturerWarranty = false;
  bool _nonLocalWarranty = false;
  bool get localSellerWarranty => _localSellerWarranty;
  bool get noWarranty => _noWarranty;
  bool get manufacturerWarranty => _manufacturerWarranty;
  bool get nonLocalWarranty => _nonLocalWarranty;

  switcherLocalSellerWarranty(bool value) {
    _localSellerWarranty = value;
    update();
  }

  switcherNoWarranty(bool value) {
    _noWarranty = value;
    update();
  }

  switcherManufacturerWarranty(bool value) {
    _manufacturerWarranty = value;
    update();
  }

  switcherNonLocalWarranty(bool value) {
    _nonLocalWarranty = value;
    update();
  }

  selectDimensionUnit(String? value) {
    _selectedDimensionUnit = value!;
    update();
  }

  selectWeightUnit(String? value) {
    _selectedWeightUnit = value!;
    update();
  }

  selectStore(String? value) {
    _selectedStore = value!;
    update();
  }

  selectStatus(String? value) {
    _selectedStat = value!;
    update();
  }

  switcherISFeature(bool value) {
    _isFeature = value;
    update();
  }

  switcherIsPopular(bool value) {
    _isPopular = value;
    update();
  }

  switcherIsShippingFree(bool value) {
    _isShippingFree = value;
    update();
  }

  /// change color
  changeColor() {
    Utils.chooseColor(
      (value) {
        if (value != null) {
          _productColor = value;
          update();
        }
      },
      initialColor: productColor,
    );
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
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}