import 'package:auto_route/auto_route.dart';
import 'package:delivery/presentation/auth/sign_in_page.dart';
import 'package:delivery/presentation/delivery_item/delivery_item_page.dart';
import 'package:delivery/presentation/delivery_item/delivery_item_view_page.dart';
import 'package:delivery/presentation/delivery_item/delivery_product_success_page.dart';
import 'package:delivery/presentation/home_page.dart';
import 'package:delivery/presentation/order_item/order_item_page.dart';
import 'package:delivery/presentation/order_item/order_item_view_page.dart';
import 'package:delivery/presentation/order_item/product_reject_page.dart';
import 'package:delivery/presentation/order_item/product_reject_success_page.dart';
import 'package:delivery/presentation/picked_items/picked_items_page.dart';
import 'package:delivery/presentation/profile/profile_page.dart';
import 'package:delivery/presentation/rejected_items/rejected_items_page.dart';
import 'package:delivery/presentation/splash_page/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, path: "/splash-page", initial: true),
    MaterialRoute(page: HomePage, path: "/home"),
    MaterialRoute(page: OrderItemPage, path: "/order-items"),
    MaterialRoute(page: OrderItemViewPage, path: "/order-item-view"),
    MaterialRoute(page: ProductRejectPage, path: "/product-reject"),
    MaterialRoute(
        page: ProductRejectSuccessPage, path: "/product-reject-success"),
    MaterialRoute(page: DeliveryItemPage, path: "/delivery-items"),
    MaterialRoute(page: DeliveryItemViewPage, path: "/delivery-items-view"),
    MaterialRoute(
        page: DeliveryProductSuccessPage, path: "/delivery-product-success"),
    MaterialRoute(page: SignInPage, path: "/sign-in"),
    MaterialRoute(page: ProfilePage, path: "/user-proifle"),
    MaterialRoute(page: PickedItemsPage, path: "/picked-items"),
    MaterialRoute(page: RejectedItemPage, path: "/rejected-items"),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
