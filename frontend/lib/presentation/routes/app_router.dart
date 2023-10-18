import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/home_page.dart';
import 'package:frontend/presentation/product/add_product.dart';
import 'package:frontend/presentation/product/advertiser/advertise_product_page.dart';
import 'package:frontend/presentation/product/product_page.dart';
import 'package:frontend/presentation/product/seller/sell_product_page.dart';
import 'package:frontend/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, path: "/home"),
  MaterialRoute(page: SplashPage, path: "/splash-page", initial: true),
  MaterialRoute(page: ProductPage, path: "/product-page"),
  MaterialRoute(page: AddProductPage, path: "/add-product"),
  MaterialRoute(page: AdvertiseProductPage, path: "/advertise-product"),
  MaterialRoute(page: SellProductPage, path: "/sell-product"),
], replaceInRouteName: 'Page,Route')
class $AppRouter {}
