import 'package:businessapp/Controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/constants.dart';

// ignore: must_be_immutable
class ProductListBoxWidget extends StatelessWidget {
  Color color;
  ProductListBoxWidget({super.key, required this.color});
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            width: Get.width * 0.9,
            height: controller.productList.isEmpty ? Get.height * 0.2 : null,
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: color, width: 5),
            ),
            child: Wrap(
              children: controller.productList.map((product) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 9.0),
                        child: Text(
                          "۔",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Jameel',
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Text(
                        product,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 35,
                          fontFamily: 'Jameel',
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
