// HomeController class.
// Extends the GetxController class.
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // RxString atSelectedValue.
  // Observable string value for the selected location.
  RxString selectedLocation = 'لاہور'.obs;

  // RxString priceSelectedValue.
  // Observable string value for the selected price.
  RxString priceSelectedValue = '۱۰۰۰۰'.obs;

  // RxString atWhereSelectedValue.
  // Observable string value for the selected delivery destination.
  RxString atWhereSelectedValue = 'کہاں تک'.obs;

  // RxString whenSelectedValue.
  // Observable string value for the selected delivery date and time.
  RxString whenSelectedValue = 'کب تک'.obs;

  // RxBool isChecked.
  // Observable boolean value for the checked state of a checkbox.
  RxBool isChecked = false.obs;

  // ValueNotifier<bool> switchController.
  // Value notifier for the state of a switch.
  final switchController = ValueNotifier<bool>(true);

  // void updateAtSelectedValue(String value).
  // Updates the value of the atSelectedValue observable.
  void setSelectedLocation(String value) {
    selectedLocation.value = value;
  }
}
