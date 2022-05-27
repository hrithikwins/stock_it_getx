import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart' show assetBundle, rootBundle;
import 'package:intl/intl.dart';
import 'package:stock_it/app/data/all_stock_data.model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  Rx<AllStockData> allStocksData = AllStockData().obs;
  String currentHour = DateFormat("hh").format(DateTime.now());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    feedValues();
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  feedValues() async {
    try {
      var feedLoadedData = await loadJson();
      print("feeded value");
      allStocksData.value = AllStockData.fromJson(jsonDecode(feedLoadedData));
    } catch (e) {
      Get.snackbar("Server Error", "error in getting stock data");
      print("feeded value error" + e.toString());
    }
  }

  loadJson() {
    return rootBundle.loadString("assets/json/all-stock-data.json");
  }

  greetings() {
    var greeting = int.parse(currentHour);
    if (greeting >= 4) {
      return 'Morning';
    } else if (greeting > 12 && greeting <= 18) {
      return 'Afternoon';
    } else if (greeting > 18 && greeting <= 24) {
      return 'Evening';
    } else {
      return 'Evening';
    }
  }
}
