import 'package:flutter/material.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/utils/toast_manager.dart';
import 'package:shahrukh_s_application1/core/utils/utils.dart';

class CouponController extends GetxController {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _selectedStartDate;
  String? get selectedStartDate => _selectedStartDate;
  String? _selectedStartTime;
  String? get selectedStartTime => _selectedStartTime;
  String? _selectedExpiryDate;
  String? get selectedExpiryDate => _selectedExpiryDate;
  String? _selectedExpiryTime;
  String? get selectedExpiryTime => _selectedExpiryTime;

  List<String> _numbers = ['1', '2'];
  List<String> get numbers => _numbers;
  String _selectedNumberOfUser = '';
  String get selectedNumberOfUser => _selectedNumberOfUser;
  String _selectedNumberFrequencyOfUser = '';
  String get selectedNumberFrequencyOfUser => _selectedNumberFrequencyOfUser;

  List<String> _item = ['Yes', 'No'];
  List<String> get item => _item;
  late String _selectedFreeShipping;
  String get selectedFreeShipping => _selectedFreeShipping;
  late String _selectedExcludedOffer;
  String get selectedExcludedOffer => _selectedExcludedOffer;

  selectFreeShipping(String? value) {
    _selectedFreeShipping = value!;
    update();
  }

  selectExcludedOffer(String? value) {
    _selectedExcludedOffer = value!;
    update();
  }

  selectNumberOfUser(String? value) {
    _selectedNumberOfUser = value!;
    update();
  }

  selectNumberFrequencyOfUser(String? value) {
    _selectedNumberFrequencyOfUser = value!;
    update();
  }

  selectDateTime() async {
    Utils.chooseDate(
      (String? value) {
        if (value != null) {
          _selectedStartDate = value;
          update();
        }
      },
      initialDate: DateTime.now(),
    );
  }

  selectTime() async {
    Utils.chooseTime(
      (String? value) {
        if (value != null) {
          _selectedStartTime = value;
          update();
        }
      },
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
    );
  }

  selectExpiryDate() async {
    Utils.chooseDate(
      (String? value) {
        if (value != null) {
          _selectedExpiryDate = value;
          update();
        }
      },
      initialDate: DateTime.now(),
    );
  }

  selectExpiryTime() async {
    Utils.chooseTime(
      (String? value) {
        if (value != null) {
          _selectedExpiryTime = value;
          update();
        }
      },
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
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
  void onInit() {
    _selectedFreeShipping = _item.first;
    _selectedExcludedOffer = _item.first;
    super.onInit();
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
