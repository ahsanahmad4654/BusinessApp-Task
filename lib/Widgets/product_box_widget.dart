import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/constants.dart';

// ignore: must_be_immutable
class ProductBoxWidget extends StatelessWidget {
  String title;
  VoidCallback addOnTap;
  VoidCallback removeOnTap;

  ProductBoxWidget(
      {super.key,
      required this.addOnTap,
      required this.removeOnTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: addOnTap,
          child: const Icon(
            Icons.add_circle,
            color: borderColor,
            size: 45,
          ),
        ),
        Container(
          width: Get.width * 0.6,
          height: Get.height * 0.07,
          decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: primaryColor)),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 40,
                fontFamily: 'Jameel',
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: removeOnTap,
          child: const Icon(
            Icons.remove_circle,
            color: borderColor,
            size: 45,
          ),
        ),
      ],
    );
  }
}
