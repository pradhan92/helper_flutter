
import 'package:get/get.dart';
import 'package:helper/complate/service/remote_service.dart';

class ProductController extends GetxController {
  var products = [].obs;
  var isLoading = false.obs;

  Future getProducts() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchProduct();
      if (data != null) {
        products.value = data;
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProducts();
  }
}
