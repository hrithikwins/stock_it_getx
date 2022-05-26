import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import 'home.controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _artificialAppBar(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Explore Stocks",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => controller.allStocksData.value.stocks != null
                    ? ListView(
                        children: [
                          for (var index = 0;
                              index <
                                  controller.allStocksData.value.stocks!.length;
                              index++)
                            _stockTile(
                              controller.allStocksData.value.stocks![index],
                              index,
                            ),
                        ],
                      )
                    : Wrap(),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => {controller.feedValues()},
            //   child: Text("gee"),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _artificialAppBar() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 13,
          ),
          child: Text(
            "Hii, Good Morning",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 44, 0, 146),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }

  _stockTile(stockData, index) {
    return InkWell(
      onTap: () => {
        Get.toNamed(
          Routes.STOCK_DETAIL,
          arguments: stockData,
        )
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 13,
          ),
          child: Text(
            stockData.name,
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 44, 0, 146),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
