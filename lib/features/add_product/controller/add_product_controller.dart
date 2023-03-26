import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';

class AddProductController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<String> _currency = [Constants.currency];
  List<String> get currencies => _currency;
  String _selectedCurrency = Constants.currency;
  String get selectedCurrency => _selectedCurrency;
  final List<String> _tags = ['tag 1', 'tag 2'];
  List<String> get tags => _tags;
  String _selectedTag = '';
  String get selectedTag => _selectedTag;

  selectTag(String? value) {
    _selectedTag = value!;
    update();
  }

  selectCurrency(String? value) {
    _selectedCurrency = value!;
    update();
  }

  updateProduct() {
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
