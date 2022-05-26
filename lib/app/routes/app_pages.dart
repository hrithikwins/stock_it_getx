import 'package:get/get.dart';

import '../modules/home/home.binding.dart';
import '../modules/home/home.view.dart';
import '../modules/home/stock_detail/stock_detail.binding.dart';
import '../modules/home/stock_detail/stock_detail.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.STOCK_DETAIL,
          page: () => StockDetailView(),
          binding: StockDetailBinding(),
        ),
      ],
    ),
  ];
}
