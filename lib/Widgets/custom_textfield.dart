import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  Color color;
  CustomTextField({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.05,
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          fillColor: color,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 3.0, horizontal: 8.0), // Adjust padding
        ),
      ),
    );
  }
}
