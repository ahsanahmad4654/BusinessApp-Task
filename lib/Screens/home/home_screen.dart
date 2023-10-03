// Import statements.
import 'package:businessapp/Controller/home_controller.dart';
import 'package:businessapp/Screens/product/add_products_screen.dart';
import 'package:businessapp/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import '../../Widgets/app_bar_widget.dart';
import '../../Widgets/button_widget.dart';
import '../../Widgets/custom_textfield.dart';
import '../../Widgets/dropdown_widget.dart';
import '../../Widgets/product_list_box_widget.dart';

// HomeScreen class.
class HomeScreen extends StatelessWidget {
  // final HomeController controller.
  // The controller for the home screen.
  final HomeController controller = Get.put(HomeController());

  // HomeScreen constructor.
  HomeScreen({super.key});

  // build() method.
  // Builds the home screen UI.
  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget with the specified configuration.
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Obx(
          () => SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // AppBarWidget widget.
                  // Displays the app bar.
                  AppBarWidget(
                    textStyle: Get.textTheme.titleLarge,
                    color: secondaryColor,
                  ),

                  // Padding widget with padding on all sides.
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.09,
                      vertical: Get.height * 0.015,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded widget with a width of 3 flex units.
                        Expanded(
                          flex: 3,
                          child: CustomTextField(
                            color: fieldColor,
                          ),
                        ),

                        // Expanded widget with a width of 1 flex unit.
                        Expanded(
                          child: Text(
                            "نام",
                            textAlign: TextAlign.end,
                            style: Get.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Padding widget with padding on all sides.
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.09,
                      vertical: Get.height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded widget with a width of 3 flex units.
                        Expanded(
                          flex: 3,
                          child: CustomTextField(color: fieldColor),
                        ),
                        // Expanded widget with a width of 1 flex unit.
                        Expanded(
                          child: Text(
                            "فون نمبر",
                            textAlign: TextAlign.end,
                            style: Get.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),

// Padding widget with padding on all sides.
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.09,
                      vertical: Get.height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded widget with a width of 3 flex units.
                        Expanded(
                          flex: 3,
                          child: DropDownWidget(
                            dropdownItems: atDropdownItems,
                            onChanged: (value) {
                              controller.selectedLocation.value = value;
                            },
                            value: controller.selectedLocation.value,
                            color: fieldColor,
                          ),
                        ),
                        // Expanded widget with a width of 1 flex unit.
                        Expanded(
                          child: Text(
                            "تک",
                            textAlign: TextAlign.end,
                            style: Get.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),

// Padding widget with padding on all sides.
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.09,
                      vertical: Get.height * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded widget with a width of 2 flex units.
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // AdvancedSwitch widget.
                              AdvancedSwitch(
                                thumb: ValueListenableBuilder<bool>(
                                  valueListenable: controller.switchController,
                                  builder: (_, value, __) {
                                    return const Icon(Icons.circle,
                                        color: primaryColor);
                                  },
                                ),
                                activeColor: secondaryColor,
                                width: Get.width * 0.13,
                                controller: controller.switchController,
                              ),
                            ],
                          ),
                        ),
                        // Expanded widget with a width of 1 flex unit.
                        Expanded(
                          child: Text(
                            "مقررہ قیمت",
                            textAlign: TextAlign.end,
                            style: Get.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Row widget with two columns.
                  Row(
                    children: [
                      // Expanded widget with a child column.
                      Expanded(
                        child: Column(
                          children: [
                            // Text widget with the text "Vehicle price".
                            Text(
                              "گاڑی کی قیمت",
                              textAlign: TextAlign.end,
                              style: Get.textTheme.titleSmall,
                            ),
                            // Padding widget with padding on all sides.
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: // SizedBox widget with a DropDownWidget inside.
                                  SizedBox(
                                width: Get.width * 0.45,
                                child: DropDownWidget(
                                  dropdownItems: priceDropdownItems,
                                  onChanged: (value) {
                                    controller.priceSelectedValue.value = value;
                                  },
                                  value: controller.priceSelectedValue.value,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                            // SizedBox widget with a DropDownWidget inside.
                            SizedBox(
                              width: Get.width * 0.45,
                              child: DropDownWidget(
                                dropdownItems: whenDropdownItems,
                                onChanged: (value) {
                                  controller.whenSelectedValue.value = value;
                                },
                                value: controller.whenSelectedValue.value,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Expanded widget with a child column.
                      Expanded(
                        child: Column(
                          children: [
                            // Text widget with the text "Shop price".
                            Text(
                              "دکان کے پیسہ",
                              textAlign: TextAlign.end,
                              style: Get.textTheme.titleSmall,
                            ),
                            // Padding widget with padding on all sides.
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: // CustomTextField widget with the color set to secondaryColor.
                                  CustomTextField(color: secondaryColor),
                            ),
                            // SizedBox widget with a DropDownWidget inside.
                            SizedBox(
                              width: Get.width * 0.45,
                              child: DropDownWidget(
                                dropdownItems: atWhereDropdownItems,
                                onChanged: (value) {
                                  controller.atWhereSelectedValue.value = value;
                                },
                                value: controller.atWhereSelectedValue.value,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // SizedBox widget with a width of 60% of the screen width.
                  SizedBox(
                    width: Get.width * 0.6,
                    child: ListTile(
                      // Title widget with the text "Products".
                      title: Text(
                        "سامان",
                        textAlign: TextAlign.center,
                        style: Get.textTheme.titleSmall,
                      ),
                      // Subtitle widget with a ButtonWidget that opens the AddProductsScreen.
                      subtitle: ButtonWidget(
                        onTap: () {
                          Get.to(AddProductsScreen());
                        },
                        text: "سامان داخل کریں",
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Padding widget with padding on all sides.
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.09,
                      vertical: Get.height * 0.015,
                    ),
                    child: Row(
                      children: [
                        // Expanded widget with a checkbox.
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                                unselectedWidgetColor: secondaryColor),
                            child: Transform.scale(
                              scale: 2.5,
                              child: Checkbox(
                                activeColor: secondaryColor,
                                checkColor: primaryColor,
                                value: controller.isChecked.value,
                                onChanged: (value) {
                                  controller.isChecked.value = value!;
                                },
                              ),
                            ),
                          ),
                        ),
                        // Expanded widget with a text field.
                        Expanded(
                          flex: 3,
                          child: CustomTextField(color: secondaryColor),
                        ),
                      ],
                    ),
                  ),

                  ProductListBoxWidget(
                    color: secondaryColor,
                  ),

                  SizedBox(
                    width: Get.width * 0.4,
                    child: ButtonWidget(
                      // onTap property set to a function that does nothing.
                      onTap: () {},
                      // text property set to "آرڈر درج کریں".
                      text: "آرڈر درج کریں",
                      // color property set to Colors.white.
                      color: Colors.white,
                    ),
                  ),
                ]),
          ),
        )));
  }
}
