import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'stock_detail.controller.dart';

class StockDetailView extends GetView<StockDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _demoCard("stock name", controller.stockData.name),
                    _demoCard(
                        "all time high", controller.stockData.allTimeHigh),
                    _demoCard("investment period",
                        controller.stockData.investmentPeriod),
                    _demoCard("market cap", controller.stockData.marketCap),
                    _demoCard("peRatio", controller.stockData.peRatio),
                    _demoCard("Risk", controller.stockData.risk),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _demoCard(title, data) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            data.runtimeType.toString() == 'int' ? data.toString() : data,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
