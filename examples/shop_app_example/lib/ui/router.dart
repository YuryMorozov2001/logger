import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_shop_app_example/features/product/product.dart';
import 'package:talker_shop_app_example/features/products/view/products_screen.dart';

abstract class Routes {
  static const productsList = '/products-list';
  static const product = '/product';
  static const talker = '/talker';
}

final appRoutes = <String, WidgetBuilder>{
  Routes.product: (context) => const ProductScreen(),
  Routes.productsList: (context) => const ProductsScreen(),
  Routes.talker: (context) => TalkerScreen(
        theme: const TalkerScreenTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          textColor: Colors.black,
          cardColor: Color(0xFFF6F8FB),
        ),
        talker: GetIt.instance<Talker>(),
      ),
};
