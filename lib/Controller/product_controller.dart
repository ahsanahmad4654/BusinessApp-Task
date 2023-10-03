import 'package:get/get.dart';

class ProductController extends GetxController {
  // Observable list of product items.
  RxList<String> productList = <String>[].obs;

  // Adds a product item to the product list.
  void addItem(String item) {
    productList.add(item);
  }

  // Removes a product item from the product list.
  void removeItem(String item) {
    productList.remove(item);
  }

  // Updates the product list.
  void updateProductList() {}
}
