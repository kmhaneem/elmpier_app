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
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:flutter/material.dart' as _i37;

import '../../domain/advertisement/advertisement.dart' as _i39;
import '../../domain/product/product.dart' as _i38;
import '../admin_page.dart' as _i35;
import '../advertisement/advertisement_view_page.dart' as _i33;
import '../advertisement/all_advertisement_page.dart' as _i23;
import '../advertisement/approved_advertisement_page.dart' as _i24;
import '../advertisement/pending_advertisement_page.dart' as _i25;
import '../advertisement/pending_advertisement_view_page.dart' as _i34;
import '../advertisement/rejected_adverisement_page.dart' as _i26;
import '../auth/sign_in_page.dart' as _i2;
import '../home_page.dart' as _i3;
import '../main-pages/advertisement_page.dart' as _i11;
import '../main-pages/classfication_page.dart' as _i12;
import '../main-pages/delivery_user_page.dart' as _i13;
import '../main-pages/orders_page.dart' as _i14;
import '../main-pages/product_page.dart' as _i15;
import '../main-pages/reject_review_page.dart' as _i16;
import '../main-pages/transactions_page.dart' as _i17;
import '../main-pages/users_page.dart' as _i18;
import '../orders/ads_order_items_page.dart' as _i27;
import '../orders/product_order_items_page.dart' as _i28;
import '../product/all_products_page.dart' as _i19;
import '../product/approved_products_page.dart' as _i20;
import '../product/pending_product_view_page.dart' as _i32;
import '../product/pending_products_page.dart' as _i21;
import '../product/product_page.dart' as _i4;
import '../product/product_view_page.dart' as _i5;
import '../product/rejected_products_page.dart' as _i22;
import '../product/review/review_product_page.dart' as _i6;
import '../product/review/review_product_view_page.dart' as _i7;
import '../splash/splash_page.dart' as _i1;
import '../transaction/transaction_page.dart' as _i10;
import '../users/all_users_page.dart' as _i29;
import '../users/normal_users_page.dart' as _i30;
import '../users/plus_users_page.dart' as _i31;
import '../users/user_page.dart' as _i8;
import '../users/view_user_page.dart' as _i9;

class AppRouter extends _i36.RootStackRouter {
  AppRouter([_i37.GlobalKey<_i37.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i36.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProductPage(),
      );
    },
    ProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductViewRouteArgs>();
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ReviewProductRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ReviewProductPage(),
      );
    },
    ReviewProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewProductViewRouteArgs>();
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ReviewProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.UserPage(),
      );
    },
    ViewUserRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ViewUserPage(),
      );
    },
    TransactionRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionPage(),
      );
    },
    AdvertisementRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AdvertisementPage(),
      );
    },
    ClassificationRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ClassificationPage(),
      );
    },
    DeliveryUserRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.DeliveryUserPage(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.OrdersPage(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ProductsPage(),
      );
    },
    RejectReviewRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.RejectReviewPage(),
      );
    },
    TransactionsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.TransactionsPage(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.UsersPage(),
      );
    },
    AllProductsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.AllProductsPage(),
      );
    },
    ApporovedProductsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.ApporovedProductsPage(),
      );
    },
    PendingProductsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.PendingProductsPage(),
      );
    },
    RejectedProductsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.RejectedProductsPage(),
      );
    },
    AllAdvertisementRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.AllAdvertisementPage(),
      );
    },
    ApprovedAdvertisementRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.ApprovedAdvertisementPage(),
      );
    },
    PendingAdvertisementRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.PendingAdvertisementPage(),
      );
    },
    RejectedAdvertisementRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.RejectedAdvertisementPage(),
      );
    },
    AdsOrderItemsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.AdsOrderItemsPage(),
      );
    },
    ProductsOrderItemsRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.ProductsOrderItemsPage(),
      );
    },
    AllUsersRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.AllUsersPage(),
      );
    },
    NormalUsersRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.NormalUsersPage(),
      );
    },
    PlusUsersRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.PlusUsersPage(),
      );
    },
    PendingProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<PendingProductViewRouteArgs>();
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i32.PendingProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    AdvertisementViewRoute.name: (routeData) {
      final args = routeData.argsAs<AdvertisementViewRouteArgs>();
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i33.AdvertisementViewPage(
          key: args.key,
          advertisement: args.advertisement,
        ),
      );
    },
    PendingAdvertisementViewRoute.name: (routeData) {
      final args = routeData.argsAs<PendingAdvertisementViewRouteArgs>();
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i34.PendingAdvertisementViewPage(
          key: args.key,
          advertisement: args.advertisement,
        ),
      );
    },
    AdminRoute.name: (routeData) {
      return _i36.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.AdminPage(),
      );
    },
  };

  @override
  List<_i36.RouteConfig> get routes => [
        _i36.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i36.RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        _i36.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i36.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i36.RouteConfig(
          ProductRoute.name,
          path: '/view-product',
        ),
        _i36.RouteConfig(
          ProductViewRoute.name,
          path: '/view-product-view',
        ),
        _i36.RouteConfig(
          ReviewProductRoute.name,
          path: '/view-product-review',
        ),
        _i36.RouteConfig(
          ReviewProductViewRoute.name,
          path: '/view-product-review-view',
        ),
        _i36.RouteConfig(
          UserRoute.name,
          path: '/user',
        ),
        _i36.RouteConfig(
          ViewUserRoute.name,
          path: '/view-user',
        ),
        _i36.RouteConfig(
          TransactionRoute.name,
          path: '/transcation',
        ),
        _i36.RouteConfig(
          AdvertisementRoute.name,
          path: '/advertisement',
        ),
        _i36.RouteConfig(
          ClassificationRoute.name,
          path: '/classification',
        ),
        _i36.RouteConfig(
          DeliveryUserRoute.name,
          path: '/delivery-user',
        ),
        _i36.RouteConfig(
          OrdersRoute.name,
          path: '/orders',
        ),
        _i36.RouteConfig(
          ProductsRoute.name,
          path: '/products',
        ),
        _i36.RouteConfig(
          RejectReviewRoute.name,
          path: '/reject-review',
        ),
        _i36.RouteConfig(
          TransactionsRoute.name,
          path: '/transactions',
        ),
        _i36.RouteConfig(
          UsersRoute.name,
          path: '/users',
        ),
        _i36.RouteConfig(
          AllProductsRoute.name,
          path: '/all-products',
        ),
        _i36.RouteConfig(
          ApporovedProductsRoute.name,
          path: '/approved-products',
        ),
        _i36.RouteConfig(
          PendingProductsRoute.name,
          path: '/pending-products',
        ),
        _i36.RouteConfig(
          RejectedProductsRoute.name,
          path: '/rejected-products',
        ),
        _i36.RouteConfig(
          AllAdvertisementRoute.name,
          path: '/all-advertisements',
        ),
        _i36.RouteConfig(
          ApprovedAdvertisementRoute.name,
          path: '/approved-advertisement',
        ),
        _i36.RouteConfig(
          PendingAdvertisementRoute.name,
          path: '/pending-advertisement',
        ),
        _i36.RouteConfig(
          RejectedAdvertisementRoute.name,
          path: '/rejected-advertisement',
        ),
        _i36.RouteConfig(
          AdsOrderItemsRoute.name,
          path: '/ads-order-items',
        ),
        _i36.RouteConfig(
          ProductsOrderItemsRoute.name,
          path: '/products-order-item',
        ),
        _i36.RouteConfig(
          AllUsersRoute.name,
          path: '/all-users',
        ),
        _i36.RouteConfig(
          NormalUsersRoute.name,
          path: '/normal-users',
        ),
        _i36.RouteConfig(
          PlusUsersRoute.name,
          path: '/plus-users',
        ),
        _i36.RouteConfig(
          PendingProductViewRoute.name,
          path: '/pending-products-view',
        ),
        _i36.RouteConfig(
          AdvertisementViewRoute.name,
          path: '/advertisement-view',
        ),
        _i36.RouteConfig(
          PendingAdvertisementViewRoute.name,
          path: '/pending-advertisement-view',
        ),
        _i36.RouteConfig(
          AdminRoute.name,
          path: '/admin',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i36.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i36.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i36.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ProductPage]
class ProductRoute extends _i36.PageRouteInfo<void> {
  const ProductRoute()
      : super(
          ProductRoute.name,
          path: '/view-product',
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i5.ProductViewPage]
class ProductViewRoute extends _i36.PageRouteInfo<ProductViewRouteArgs> {
  ProductViewRoute({
    _i37.Key? key,
    required _i38.Product product,
  }) : super(
          ProductViewRoute.name,
          path: '/view-product-view',
          args: ProductViewRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductViewRoute';
}

class ProductViewRouteArgs {
  const ProductViewRouteArgs({
    this.key,
    required this.product,
  });

  final _i37.Key? key;

  final _i38.Product product;

  @override
  String toString() {
    return 'ProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.ReviewProductPage]
class ReviewProductRoute extends _i36.PageRouteInfo<void> {
  const ReviewProductRoute()
      : super(
          ReviewProductRoute.name,
          path: '/view-product-review',
        );

  static const String name = 'ReviewProductRoute';
}

/// generated route for
/// [_i7.ReviewProductViewPage]
class ReviewProductViewRoute
    extends _i36.PageRouteInfo<ReviewProductViewRouteArgs> {
  ReviewProductViewRoute({
    _i37.Key? key,
    required _i38.Product product,
  }) : super(
          ReviewProductViewRoute.name,
          path: '/view-product-review-view',
          args: ReviewProductViewRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ReviewProductViewRoute';
}

class ReviewProductViewRouteArgs {
  const ReviewProductViewRouteArgs({
    this.key,
    required this.product,
  });

  final _i37.Key? key;

  final _i38.Product product;

  @override
  String toString() {
    return 'ReviewProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i8.UserPage]
class UserRoute extends _i36.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: '/user',
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i9.ViewUserPage]
class ViewUserRoute extends _i36.PageRouteInfo<void> {
  const ViewUserRoute()
      : super(
          ViewUserRoute.name,
          path: '/view-user',
        );

  static const String name = 'ViewUserRoute';
}

/// generated route for
/// [_i10.TransactionPage]
class TransactionRoute extends _i36.PageRouteInfo<void> {
  const TransactionRoute()
      : super(
          TransactionRoute.name,
          path: '/transcation',
        );

  static const String name = 'TransactionRoute';
}

/// generated route for
/// [_i11.AdvertisementPage]
class AdvertisementRoute extends _i36.PageRouteInfo<void> {
  const AdvertisementRoute()
      : super(
          AdvertisementRoute.name,
          path: '/advertisement',
        );

  static const String name = 'AdvertisementRoute';
}

/// generated route for
/// [_i12.ClassificationPage]
class ClassificationRoute extends _i36.PageRouteInfo<void> {
  const ClassificationRoute()
      : super(
          ClassificationRoute.name,
          path: '/classification',
        );

  static const String name = 'ClassificationRoute';
}

/// generated route for
/// [_i13.DeliveryUserPage]
class DeliveryUserRoute extends _i36.PageRouteInfo<void> {
  const DeliveryUserRoute()
      : super(
          DeliveryUserRoute.name,
          path: '/delivery-user',
        );

  static const String name = 'DeliveryUserRoute';
}

/// generated route for
/// [_i14.OrdersPage]
class OrdersRoute extends _i36.PageRouteInfo<void> {
  const OrdersRoute()
      : super(
          OrdersRoute.name,
          path: '/orders',
        );

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i15.ProductsPage]
class ProductsRoute extends _i36.PageRouteInfo<void> {
  const ProductsRoute()
      : super(
          ProductsRoute.name,
          path: '/products',
        );

  static const String name = 'ProductsRoute';
}

/// generated route for
/// [_i16.RejectReviewPage]
class RejectReviewRoute extends _i36.PageRouteInfo<void> {
  const RejectReviewRoute()
      : super(
          RejectReviewRoute.name,
          path: '/reject-review',
        );

  static const String name = 'RejectReviewRoute';
}

/// generated route for
/// [_i17.TransactionsPage]
class TransactionsRoute extends _i36.PageRouteInfo<void> {
  const TransactionsRoute()
      : super(
          TransactionsRoute.name,
          path: '/transactions',
        );

  static const String name = 'TransactionsRoute';
}

/// generated route for
/// [_i18.UsersPage]
class UsersRoute extends _i36.PageRouteInfo<void> {
  const UsersRoute()
      : super(
          UsersRoute.name,
          path: '/users',
        );

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i19.AllProductsPage]
class AllProductsRoute extends _i36.PageRouteInfo<void> {
  const AllProductsRoute()
      : super(
          AllProductsRoute.name,
          path: '/all-products',
        );

  static const String name = 'AllProductsRoute';
}

/// generated route for
/// [_i20.ApporovedProductsPage]
class ApporovedProductsRoute extends _i36.PageRouteInfo<void> {
  const ApporovedProductsRoute()
      : super(
          ApporovedProductsRoute.name,
          path: '/approved-products',
        );

  static const String name = 'ApporovedProductsRoute';
}

/// generated route for
/// [_i21.PendingProductsPage]
class PendingProductsRoute extends _i36.PageRouteInfo<void> {
  const PendingProductsRoute()
      : super(
          PendingProductsRoute.name,
          path: '/pending-products',
        );

  static const String name = 'PendingProductsRoute';
}

/// generated route for
/// [_i22.RejectedProductsPage]
class RejectedProductsRoute extends _i36.PageRouteInfo<void> {
  const RejectedProductsRoute()
      : super(
          RejectedProductsRoute.name,
          path: '/rejected-products',
        );

  static const String name = 'RejectedProductsRoute';
}

/// generated route for
/// [_i23.AllAdvertisementPage]
class AllAdvertisementRoute extends _i36.PageRouteInfo<void> {
  const AllAdvertisementRoute()
      : super(
          AllAdvertisementRoute.name,
          path: '/all-advertisements',
        );

  static const String name = 'AllAdvertisementRoute';
}

/// generated route for
/// [_i24.ApprovedAdvertisementPage]
class ApprovedAdvertisementRoute extends _i36.PageRouteInfo<void> {
  const ApprovedAdvertisementRoute()
      : super(
          ApprovedAdvertisementRoute.name,
          path: '/approved-advertisement',
        );

  static const String name = 'ApprovedAdvertisementRoute';
}

/// generated route for
/// [_i25.PendingAdvertisementPage]
class PendingAdvertisementRoute extends _i36.PageRouteInfo<void> {
  const PendingAdvertisementRoute()
      : super(
          PendingAdvertisementRoute.name,
          path: '/pending-advertisement',
        );

  static const String name = 'PendingAdvertisementRoute';
}

/// generated route for
/// [_i26.RejectedAdvertisementPage]
class RejectedAdvertisementRoute extends _i36.PageRouteInfo<void> {
  const RejectedAdvertisementRoute()
      : super(
          RejectedAdvertisementRoute.name,
          path: '/rejected-advertisement',
        );

  static const String name = 'RejectedAdvertisementRoute';
}

/// generated route for
/// [_i27.AdsOrderItemsPage]
class AdsOrderItemsRoute extends _i36.PageRouteInfo<void> {
  const AdsOrderItemsRoute()
      : super(
          AdsOrderItemsRoute.name,
          path: '/ads-order-items',
        );

  static const String name = 'AdsOrderItemsRoute';
}

/// generated route for
/// [_i28.ProductsOrderItemsPage]
class ProductsOrderItemsRoute extends _i36.PageRouteInfo<void> {
  const ProductsOrderItemsRoute()
      : super(
          ProductsOrderItemsRoute.name,
          path: '/products-order-item',
        );

  static const String name = 'ProductsOrderItemsRoute';
}

/// generated route for
/// [_i29.AllUsersPage]
class AllUsersRoute extends _i36.PageRouteInfo<void> {
  const AllUsersRoute()
      : super(
          AllUsersRoute.name,
          path: '/all-users',
        );

  static const String name = 'AllUsersRoute';
}

/// generated route for
/// [_i30.NormalUsersPage]
class NormalUsersRoute extends _i36.PageRouteInfo<void> {
  const NormalUsersRoute()
      : super(
          NormalUsersRoute.name,
          path: '/normal-users',
        );

  static const String name = 'NormalUsersRoute';
}

/// generated route for
/// [_i31.PlusUsersPage]
class PlusUsersRoute extends _i36.PageRouteInfo<void> {
  const PlusUsersRoute()
      : super(
          PlusUsersRoute.name,
          path: '/plus-users',
        );

  static const String name = 'PlusUsersRoute';
}

/// generated route for
/// [_i32.PendingProductViewPage]
class PendingProductViewRoute
    extends _i36.PageRouteInfo<PendingProductViewRouteArgs> {
  PendingProductViewRoute({
    _i37.Key? key,
    required _i38.Product product,
  }) : super(
          PendingProductViewRoute.name,
          path: '/pending-products-view',
          args: PendingProductViewRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'PendingProductViewRoute';
}

class PendingProductViewRouteArgs {
  const PendingProductViewRouteArgs({
    this.key,
    required this.product,
  });

  final _i37.Key? key;

  final _i38.Product product;

  @override
  String toString() {
    return 'PendingProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i33.AdvertisementViewPage]
class AdvertisementViewRoute
    extends _i36.PageRouteInfo<AdvertisementViewRouteArgs> {
  AdvertisementViewRoute({
    _i37.Key? key,
    required _i39.Advertisement advertisement,
  }) : super(
          AdvertisementViewRoute.name,
          path: '/advertisement-view',
          args: AdvertisementViewRouteArgs(
            key: key,
            advertisement: advertisement,
          ),
        );

  static const String name = 'AdvertisementViewRoute';
}

class AdvertisementViewRouteArgs {
  const AdvertisementViewRouteArgs({
    this.key,
    required this.advertisement,
  });

  final _i37.Key? key;

  final _i39.Advertisement advertisement;

  @override
  String toString() {
    return 'AdvertisementViewRouteArgs{key: $key, advertisement: $advertisement}';
  }
}

/// generated route for
/// [_i34.PendingAdvertisementViewPage]
class PendingAdvertisementViewRoute
    extends _i36.PageRouteInfo<PendingAdvertisementViewRouteArgs> {
  PendingAdvertisementViewRoute({
    _i37.Key? key,
    required _i39.Advertisement advertisement,
  }) : super(
          PendingAdvertisementViewRoute.name,
          path: '/pending-advertisement-view',
          args: PendingAdvertisementViewRouteArgs(
            key: key,
            advertisement: advertisement,
          ),
        );

  static const String name = 'PendingAdvertisementViewRoute';
}

class PendingAdvertisementViewRouteArgs {
  const PendingAdvertisementViewRouteArgs({
    this.key,
    required this.advertisement,
  });

  final _i37.Key? key;

  final _i39.Advertisement advertisement;

  @override
  String toString() {
    return 'PendingAdvertisementViewRouteArgs{key: $key, advertisement: $advertisement}';
  }
}

/// generated route for
/// [_i35.AdminPage]
class AdminRoute extends _i36.PageRouteInfo<void> {
  const AdminRoute()
      : super(
          AdminRoute.name,
          path: '/admin',
        );

  static const String name = 'AdminRoute';
}
