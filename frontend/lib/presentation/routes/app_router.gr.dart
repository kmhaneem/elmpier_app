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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../domain/product/model/product.dart' as _i9;
import '../home_page.dart' as _i1;
import '../product/add_product.dart' as _i4;
import '../product/advertiser/advertise_product_page.dart' as _i5;
import '../product/product_page.dart' as _i3;
import '../product/seller/sell_product_page.dart' as _i6;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ProductPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    AddProductRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AddProductPage(),
      );
    },
    AdvertiseProductRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AdvertiseProductPage(),
      );
    },
    SellProductRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SellProductPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash-page',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i7.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i7.RouteConfig(
          ProductRoute.name,
          path: '/product-page',
        ),
        _i7.RouteConfig(
          AddProductRoute.name,
          path: '/add-product',
        ),
        _i7.RouteConfig(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        ),
        _i7.RouteConfig(
          SellProductRoute.name,
          path: '/sell-product',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i8.Key? key})
      : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i7.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i8.Key? key,
    required _i9.Product product,
  }) : super(
          ProductRoute.name,
          path: '/product-page',
          args: ProductRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.product,
  });

  final _i8.Key? key;

  final _i9.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.AddProductPage]
class AddProductRoute extends _i7.PageRouteInfo<void> {
  const AddProductRoute()
      : super(
          AddProductRoute.name,
          path: '/add-product',
        );

  static const String name = 'AddProductRoute';
}

/// generated route for
/// [_i5.AdvertiseProductPage]
class AdvertiseProductRoute extends _i7.PageRouteInfo<void> {
  const AdvertiseProductRoute()
      : super(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        );

  static const String name = 'AdvertiseProductRoute';
}

/// generated route for
/// [_i6.SellProductPage]
class SellProductRoute extends _i7.PageRouteInfo<void> {
  const SellProductRoute()
      : super(
          SellProductRoute.name,
          path: '/sell-product',
        );

  static const String name = 'SellProductRoute';
}
