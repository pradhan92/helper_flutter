
import 'package:get/get.dart';
import 'package:helper/complate/controller/product_category_controller.dart';
import 'package:helper/complate/controller/product_controller.dart';
import 'package:helper/complate/controller/single_product_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProductController());
    Get.put(ProductCategoryController());
    Get.put(SingleProductController());
  }
}
