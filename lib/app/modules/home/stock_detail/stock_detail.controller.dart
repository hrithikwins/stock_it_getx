import 'package:get/get.dart';
import 'package:stock_it/app/data/all_stock_data.model.dart';

class StockDetailController extends GetxController {
  //TODO: Implement StockDetailController

  Stocks stockData = Get.arguments;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

}
