import 'package:businessapp/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/product_controller.dart';
import '../../Widgets/app_bar_widget.dart';
import '../../Widgets/button_widget.dart';
import '../../Widgets/category_box_widget.dart';
import '../../Widgets/product_box_widget.dart';
import '../../Widgets/product_list_box_widget.dart';

class AddProductsScreen extends StatelessWidget {
  AddProductsScreen({Key? key}) : super(key: key);

  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // AppBarWidget widget with the text style set to Get.textTheme.titleMedium and the color set to primaryColor.
              AppBarWidget(
                textStyle: Get.textTheme.titleMedium,
                color: primaryColor,
              ),

              // Padding widget with padding on all sides of 20.0.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  // MainAxisAlignment.spaceBetween ensures that the children are evenly spaced between each other.
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CategoryBoxWidget widget with the iconImage set to assets/images/wall.png and the onTap property set to a function that does nothing.
                    CategoryBoxWidget(
                      iconImage: 'assets/images/wall.png',
                      onTap: () {},
                    ),

                    // CategoryBoxWidget widget with the iconImage set to assets/images/cow.png and the onTap property set to a function that does nothing.
                    CategoryBoxWidget(
                      iconImage: 'assets/images/cow.png',
                      onTap: () {},
                    ),

                    // CategoryBoxWidget widget with the iconImage set to assets/images/fridge.png and the onTap property set to a function that does nothing.
                    CategoryBoxWidget(
                      iconImage: 'assets/images/fridge.png',
                      onTap: () {},
                    ),

                    // CategoryBoxWidget widget with the iconImage set to assets/images/sofa.png and the onTap property set to a function that does nothing.
                    CategoryBoxWidget(
                      iconImage: 'assets/images/sofa.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              // SizedBox widget with a height of 0.02 times the height of the screen.
              SizedBox(
                height: Get.height * 0.02,
              ),

              // SizedBox widget with a height of 0.87 times the height of the screen and a ListView.separated widget inside.
              SizedBox(
                height: Get.height * 0.87,
                child: ListView.separated(
                  // itemCount property set to the length of the products list.
                  itemCount: products.length,
                  // physics property set to NeverScrollableScrollPhysics to prevent the user from scrolling the list.
                  physics: const NeverScrollableScrollPhysics(),
                  // separatorBuilder property set to a function that creates a SizedBox widget with a height of 0.01 times the height of the screen.
                  separatorBuilder: (context, index) => SizedBox(
                    height: Get.height * 0.01,
                  ),
                  // itemBuilder property set to a function that creates a ProductBoxWidget widget with the addOnTap and removeOnTap properties set to functions that call the controller's addItem() and removeItem() methods, respectively, and the title property set to the current product in the list.
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ProductBoxWidget(
                      addOnTap: () {
                        controller.addItem(products[index]);
                      },
                      removeOnTap: () {
                        controller.removeItem(products[index]);
                      },
                      title: products[index],
                    );
                  },
                ),
              ),
              // ProductListBoxWidget widget with the color set to primaryColor.
              ProductListBoxWidget(
                color: primaryColor,
              ),

// SizedBox widget with a width of 0.4 times the width of the screen and a ButtonWidget widget inside.
              SizedBox(
                width: Get.width * 0.4,
                child: ButtonWidget(
                  // onTap property set to a function that navigates back to the previous screen.
                  onTap: () {
                    Get.back();
                  },
                  // text property set to "واپس".
                  text: "واپس",
                  // color property set to primaryColor.
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
