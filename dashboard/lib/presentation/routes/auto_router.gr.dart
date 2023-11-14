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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../domain/product/product.dart' as _i13;
import '../auth/sign_in_page.dart' as _i2;
import '../home_page.dart' as _i3;
import '../product/product_page.dart' as _i4;
import '../product/product_view_page.dart' as _i5;
import '../product/review/review_product_page.dart' as _i6;
import '../product/review/review_product_view_page.dart' as _i7;
import '../splash/splash_page.dart' as _i1;
import '../transaction/transaction_page.dart' as _i10;
import '../users/user_page.dart' as _i8;
import '../users/view_user_page.dart' as _i9;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SignInPage(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProductPage(),
      );
    },
    ProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductViewRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ReviewProductRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ReviewProductPage(),
      );
    },
    ReviewProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewProductViewRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ReviewProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.UserPage(),
      );
    },
    ViewUserRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ViewUserPage(),
      );
    },
    TransactionRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionPage(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i11.RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        _i11.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i11.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i11.RouteConfig(
          ProductRoute.name,
          path: '/view-product',
        ),
        _i11.RouteConfig(
          ProductViewRoute.name,
          path: '/view-product-view',
        ),
        _i11.RouteConfig(
          ReviewProductRoute.name,
          path: '/view-product-review',
        ),
        _i11.RouteConfig(
          ReviewProductViewRoute.name,
          path: '/view-product-review-view',
        ),
        _i11.RouteConfig(
          UserRoute.name,
          path: '/user',
        ),
        _i11.RouteConfig(
          ViewUserRoute.name,
          path: '/view-user',
        ),
        _i11.RouteConfig(
          TransactionRoute.name,
          path: '/transcation',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i12.Key? key})
      : super(
          SignInRoute.name,
          path: '/sign-in',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ProductPage]
class ProductRoute extends _i11.PageRouteInfo<void> {
  const ProductRoute()
      : super(
          ProductRoute.name,
          path: '/view-product',
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i5.ProductViewPage]
class ProductViewRoute extends _i11.PageRouteInfo<ProductViewRouteArgs> {
  ProductViewRoute({
    _i12.Key? key,
    required _i13.Product product,
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

  final _i12.Key? key;

  final _i13.Product product;

  @override
  String toString() {
    return 'ProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.ReviewProductPage]
class ReviewProductRoute extends _i11.PageRouteInfo<void> {
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
    extends _i11.PageRouteInfo<ReviewProductViewRouteArgs> {
  ReviewProductViewRoute({
    _i12.Key? key,
    required _i13.Product product,
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

  final _i12.Key? key;

  final _i13.Product product;

  @override
  String toString() {
    return 'ReviewProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i8.UserPage]
class UserRoute extends _i11.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: '/user',
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i9.ViewUserPage]
class ViewUserRoute extends _i11.PageRouteInfo<void> {
  const ViewUserRoute()
      : super(
          ViewUserRoute.name,
          path: '/view-user',
        );

  static const String name = 'ViewUserRoute';
}

/// generated route for
/// [_i10.TransactionPage]
class TransactionRoute extends _i11.PageRouteInfo<void> {
  const TransactionRoute()
      : super(
          TransactionRoute.name,
          path: '/transcation',
        );

  static const String name = 'TransactionRoute';
}
