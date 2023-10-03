import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget {
  TextStyle? textStyle;
  Color? color;
  AppBarWidget({super.key, this.textStyle, this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "حسن گلاس",
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            Text(
              "00000",
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            Text("عمیر اقبال", textAlign: TextAlign.center, style: textStyle),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
        child: Container(
          color: color,
          width: Get.width * 0.9,
          height: Get.height * 0.0015,
        ),
      ),
    );
  }
}
