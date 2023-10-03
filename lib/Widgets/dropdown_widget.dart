import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/constants.dart';

// ignore: must_be_immutable
class DropDownWidget extends StatelessWidget {
  String value;
  List<String> dropdownItems;
  ValueChanged onChanged;
  Color color;
  double? width;
  DropDownWidget(
      {super.key,
      this.width,
      required this.color,
      required this.dropdownItems,
      required this.onChanged,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Center(
        child: DropdownButton(
          value: value,
          dropdownColor: fieldColor,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: primaryColor,
          ),
          iconSize: 45,
          style: Get.textTheme.labelLarge,
          underline: Container(),
          items: dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // Adjust padding
                child: Text(
                  value,
                  style: Get.textTheme.labelLarge,
                ),
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
