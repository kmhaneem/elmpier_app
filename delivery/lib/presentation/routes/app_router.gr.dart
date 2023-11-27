// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../auth/sign_in_page.dart' as _i10;
import '../delivery_item/delivery_item_page.dart' as _i7;
import '../delivery_item/delivery_item_view_page.dart' as _i8;
import '../delivery_item/delivery_product_success_page.dart' as _i9;
import '../home_page.dart' as _i2;
import '../order_item/order_item_page.dart' as _i3;
import '../order_item/order_item_view_page.dart' as _i4;
import '../order_item/product_reject_page.dart' as _i5;
import '../order_item/product_reject_success_page.dart' as _i6;
import '../picked_items/picked_items_page.dart' as _i12;
import '../profile/profile_page.dart' as _i11;
import '../rejected_items/rejected_items_page.dart' as _i13;
import '../splash_page/splash_page.dart' as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    OrderItemRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.OrderItemPage(),
      );
    },
    OrderItemViewRoute.name: (routeData) {
      final args = routeData.argsAs<OrderItemViewRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.OrderItemViewPage(
          key: args.key,
          productId: args.productId,
          orderItemId: args.orderItemId,
        ),
      );
    },
    ProductRejectRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRejectRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProductRejectPage(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    ProductRejectSuccessRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProductRejectSuccessPage(),
      );
    },
    DeliveryItemRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DeliveryItemPage(),
      );
    },
    DeliveryItemViewRoute.name: (routeData) {
      final args = routeData.argsAs<DeliveryItemViewRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.DeliveryItemViewPage(
          key: args.key,
          productId: args.productId,
          orderItemId: args.orderItemId,
        ),
      );
    },
    DeliveryProductSuccessRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.DeliveryProductSuccessPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SignInPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    PickedItemsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.PickedItemsPage(),
      );
    },
    RejectedItemRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.RejectedItemPage(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash-page',
          fullMatch: true,
        ),
        _i14.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i14.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i14.RouteConfig(
          OrderItemRoute.name,
          path: '/order-items',
        ),
        _i14.RouteConfig(
          OrderItemViewRoute.name,
          path: '/order-item-view',
        ),
        _i14.RouteConfig(
          ProductRejectRoute.name,
          path: '/product-reject',
        ),
        _i14.RouteConfig(
          ProductRejectSuccessRoute.name,
          path: '/product-reject-success',
        ),
        _i14.RouteConfig(
          DeliveryItemRoute.name,
          path: '/delivery-items',
        ),
        _i14.RouteConfig(
          DeliveryItemViewRoute.name,
          path: '/delivery-items-view',
        ),
        _i14.RouteConfig(
          DeliveryProductSuccessRoute.name,
          path: '/delivery-product-success',
        ),
        _i14.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i14.RouteConfig(
          ProfileRoute.name,
          path: '/user-proifle',
        ),
        _i14.RouteConfig(
          PickedItemsRoute.name,
          path: '/picked-items',
        ),
        _i14.RouteConfig(
          RejectedItemRoute.name,
          path: '/rejected-items',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.OrderItemPage]
class OrderItemRoute extends _i14.PageRouteInfo<void> {
  const OrderItemRoute()
      : super(
          OrderItemRoute.name,
          path: '/order-items',
        );

  static const String name = 'OrderItemRoute';
}

/// generated route for
/// [_i4.OrderItemViewPage]
class OrderItemViewRoute extends _i14.PageRouteInfo<OrderItemViewRouteArgs> {
  OrderItemViewRoute({
    _i15.Key? key,
    required int productId,
    required int orderItemId,
  }) : super(
          OrderItemViewRoute.name,
          path: '/order-item-view',
          args: OrderItemViewRouteArgs(
            key: key,
            productId: productId,
            orderItemId: orderItemId,
          ),
        );

  static const String name = 'OrderItemViewRoute';
}

class OrderItemViewRouteArgs {
  const OrderItemViewRouteArgs({
    this.key,
    required this.productId,
    required this.orderItemId,
  });

  final _i15.Key? key;

  final int productId;

  final int orderItemId;

  @override
  String toString() {
    return 'OrderItemViewRouteArgs{key: $key, productId: $productId, orderItemId: $orderItemId}';
  }
}

/// generated route for
/// [_i5.ProductRejectPage]
class ProductRejectRoute extends _i14.PageRouteInfo<ProductRejectRouteArgs> {
  ProductRejectRoute({
    _i15.Key? key,
    required int productId,
  }) : super(
          ProductRejectRoute.name,
          path: '/product-reject',
          args: ProductRejectRouteArgs(
            key: key,
            productId: productId,
          ),
        );

  static const String name = 'ProductRejectRoute';
}

class ProductRejectRouteArgs {
  const ProductRejectRouteArgs({
    this.key,
    required this.productId,
  });

  final _i15.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductRejectRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i6.ProductRejectSuccessPage]
class ProductRejectSuccessRoute extends _i14.PageRouteInfo<void> {
  const ProductRejectSuccessRoute()
      : super(
          ProductRejectSuccessRoute.name,
          path: '/product-reject-success',
        );

  static const String name = 'ProductRejectSuccessRoute';
}

/// generated route for
/// [_i7.DeliveryItemPage]
class DeliveryItemRoute extends _i14.PageRouteInfo<void> {
  const DeliveryItemRoute()
      : super(
          DeliveryItemRoute.name,
          path: '/delivery-items',
        );

  static const String name = 'DeliveryItemRoute';
}

/// generated route for
/// [_i8.DeliveryItemViewPage]
class DeliveryItemViewRoute
    extends _i14.PageRouteInfo<DeliveryItemViewRouteArgs> {
  DeliveryItemViewRoute({
    _i15.Key? key,
    required int productId,
    required int orderItemId,
  }) : super(
          DeliveryItemViewRoute.name,
          path: '/delivery-items-view',
          args: DeliveryItemViewRouteArgs(
            key: key,
            productId: productId,
            orderItemId: orderItemId,
          ),
        );

  static const String name = 'DeliveryItemViewRoute';
}

class DeliveryItemViewRouteArgs {
  const DeliveryItemViewRouteArgs({
    this.key,
    required this.productId,
    required this.orderItemId,
  });

  final _i15.Key? key;

  final int productId;

  final int orderItemId;

  @override
  String toString() {
    return 'DeliveryItemViewRouteArgs{key: $key, productId: $productId, orderItemId: $orderItemId}';
  }
}

/// generated route for
/// [_i9.DeliveryProductSuccessPage]
class DeliveryProductSuccessRoute extends _i14.PageRouteInfo<void> {
  const DeliveryProductSuccessRoute()
      : super(
          DeliveryProductSuccessRoute.name,
          path: '/delivery-product-success',
        );

  static const String name = 'DeliveryProductSuccessRoute';
}

/// generated route for
/// [_i10.SignInPage]
class SignInRoute extends _i14.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/user-proifle',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i12.PickedItemsPage]
class PickedItemsRoute extends _i14.PageRouteInfo<void> {
  const PickedItemsRoute()
      : super(
          PickedItemsRoute.name,
          path: '/picked-items',
        );

  static const String name = 'PickedItemsRoute';
}

/// generated route for
/// [_i13.RejectedItemPage]
class RejectedItemRoute extends _i14.PageRouteInfo<void> {
  const RejectedItemRoute()
      : super(
          RejectedItemRoute.name,
          path: '/rejected-items',
        );

  static const String name = 'RejectedItemRoute';
}
