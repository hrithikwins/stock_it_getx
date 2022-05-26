import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
              child: ListView(
                children: [
                  _stockTile(
                    "Food",
                    "assets/images/food.png",
                  ),
                ],
              ),
            ),
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

  _stockTile(hello, hi) {
    return Container(
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
    );
  }
}
