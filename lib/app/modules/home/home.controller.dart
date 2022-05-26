import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  // final HomeStocks = HomeStocks
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
    var feedLoadedData = await loadJson();
    // homeStocks.value = homeStocks.fromJson(jsonDecode(feedLoadedData));
    print("feeded value");
  }

  loadJson() {
    return rootBundle.loadString("assets/home-feed.json");
  }
}
