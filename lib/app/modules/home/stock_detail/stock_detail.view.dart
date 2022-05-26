import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'stock_detail.controller.dart';

class StockDetailView extends GetView<StockDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StockDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StockDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
