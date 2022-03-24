import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class CustomValidation {
  static String? email(String text) {
    if (!GetUtils.isEmail(text)) {
      return 'Please provide a valid email id';
    } else {
      return null;
    }
  }

  static String? password(String value) {
    if (!GetUtils.isGreaterThan(value.length, 6)) {
      return 'Please provide password 6+ characters';
    } else {
      return null;
    }
  }

  static String? matchingPassword(
      String val, TextEditingController controller) {
    if (val.isEmpty) return 'Empty';
    CustomValidation.password(val);
    if (val != controller.text) return 'Not Match';
    return null;
  }

  static String? name(String value) {
    if (!GetUtils.isGreaterThan(value.length, 1)) {
      return 'Please enter valid name';
    } else {
      return null;
    }
  }

  static String? phone(String value) {
    if (!GetUtils.isEqual(value.length, 10)) {
      return 'Please enter valid phone number';
    } else {
      return null;
    }
  }

  static String? enterSomething(String value) {
    if (!GetUtils.isGreaterThan(value.length, 1)) {
      return 'Please enter valid details';
    } else {
      return null;
    }
  }
}
