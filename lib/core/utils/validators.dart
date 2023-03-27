// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';

enum ValidationType {
  phone,
  name,
  cardNumber,
  notEmpty,
  email,
  password,
  validationCode
}

class AppValidator {
  static FilteringTextInputFormatter priceValueOnly() {
    return FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)'));
  }

  static String? validateFields(
    String? value,
    ValidationType fieldType,
    BuildContext context,
  ) {
    if (value == null) {
      return AppString.pleaseFillThisField;
    } else if (fieldType == ValidationType.notEmpty) {
      if (value.trim().isEmpty || value.isEmpty) {
        return AppString.pleaseFillThisField;
      }
    } else if (fieldType == ValidationType.name) {
      if (!RegExp(r'^[a-zA-zأ-ي\s]+$').hasMatch(value)) {
        // return AppString.sur_NameError;
      }
    } else if (fieldType == ValidationType.email) {
      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
        return AppString.surEmailError;
      }
    } else if (fieldType == ValidationType.phone) {
      // if (value.length != AppConstant.phoneLength) {
      //   // return AppString.enter_valid_phone;
      // }
    } else if (fieldType == ValidationType.cardNumber) {
      if (value.length != 15) {
        // return AppString.validCardNumber;
      }
      return null;
    } else if (fieldType == ValidationType.validationCode) {
      if (value.isEmpty || value.length != 4) {
        // return AppString.enter_valid_verification_code;
      }
    }
    return null;
  }
}
