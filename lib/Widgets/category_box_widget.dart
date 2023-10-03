import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/constants.dart';

// ignore: must_be_immutable
class CategoryBoxWidget extends StatelessWidget {
  String iconImage;
  VoidCallback onTap;
  CategoryBoxWidget({super.key, required this.iconImage, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: Get.height * 0.07,
          decoration: BoxDecoration(
            color: primaryColor,
            border: Border.all(
              width: 2,
              color: boxColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(iconImage),
          )),
    );
  }
}
