import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class CouponController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _selectedDate;
  String? get selectedDate => _selectedDate;

  final freeShippingCTR = TextEditingController(text: 'Yes');
  final excludedOfferProductCTR = TextEditingController(text: 'Yes');

  selectDateTime() {
    log('dateFormat');
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    Utils.chooseDate(
      (DateTime? value) {
        if (value != null) {
          print(value);
          _selectedDate = dateFormat.format(value);
          update();
        }
      },
      initialDate: DateTime.now(),
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
    Utils.askPermission();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
