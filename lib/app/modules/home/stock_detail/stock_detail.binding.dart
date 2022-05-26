import 'package:get/get.dart';

import 'stock_detail.controller.dart';

class StockDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StockDetailController>(
      () => StockDetailController(),
    );
  }
}
