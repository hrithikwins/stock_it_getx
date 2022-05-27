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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    {
                      "label": "Name",
                      "data": controller.stockData.name,
                    },
                    {
                      "label": "All Time High",
                      "data": controller.stockData.allTimeHigh,
                    },
                    {
                      "label": "Investment Period",
                      "data": controller.stockData.investmentPeriod,
                    },
                    {
                      "label": "Market Cap",
                      "data": controller.stockData.marketCap,
                    },
                    {
                      "label": "P/E Ratio",
                      "data": controller.stockData.peRatio,
                    },
                    {
                      "label": "Risk",
                      "data": controller.stockData.risk,
                    },
                  ]
                      .map(
                        (item) => _dataCard(
                          item["label"],
                          item["data"],
                          color:
                              item["label"] == "Risk" && item["data"] == "High"
                                  ? Colors.red
                                  : item["data"] == "Low"
                                      ? Colors.green
                                      : Colors.black87,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataCard(title, data, {color}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 40,
            ),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            child: Text(
              data.runtimeType.toString() == 'int' ? data.toString() : data,
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
