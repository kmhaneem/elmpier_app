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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../domain/product/model/product.dart' as _i12;
import '../auth/otp_verify_page.dart' as _i9;
import '../auth/sign_in_page.dart' as _i8;
import '../auth/sign_up_page.dart' as _i7;
import '../home_page.dart' as _i1;
import '../product/add_product.dart' as _i4;
import '../product/advertiser/advertise_product_page.dart' as _i6;
import '../product/product_page.dart' as _i3;
import '../product/seller/sell_product_page.dart' as _i5;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ProductPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    AddProductRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AddProductPage(),
      );
    },
    SellProductRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SellProductPage(),
      );
    },
    AdvertiseProductRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AdvertiseProductPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignInPage(),
      );
    },
    OtpVerifyRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.OtpVerifyPage(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash-page',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i10.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i10.RouteConfig(
          ProductRoute.name,
          path: '/product-page',
        ),
        _i10.RouteConfig(
          AddProductRoute.name,
          path: '/add-product',
        ),
        _i10.RouteConfig(
          SellProductRoute.name,
          path: '/sell-product',
        ),
        _i10.RouteConfig(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        ),
        _i10.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up',
        ),
        _i10.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i10.RouteConfig(
          OtpVerifyRoute.name,
          path: '/verify',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i11.Key? key})
      : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i10.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i11.Key? key,
    required _i12.Product product,
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

  final _i11.Key? key;

  final _i12.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.AddProductPage]
class AddProductRoute extends _i10.PageRouteInfo<void> {
  const AddProductRoute()
      : super(
          AddProductRoute.name,
          path: '/add-product',
        );

  static const String name = 'AddProductRoute';
}

/// generated route for
/// [_i5.SellProductPage]
class SellProductRoute extends _i10.PageRouteInfo<void> {
  const SellProductRoute()
      : super(
          SellProductRoute.name,
          path: '/sell-product',
        );

  static const String name = 'SellProductRoute';
}

/// generated route for
/// [_i6.AdvertiseProductPage]
class AdvertiseProductRoute extends _i10.PageRouteInfo<void> {
  const AdvertiseProductRoute()
      : super(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        );

  static const String name = 'AdvertiseProductRoute';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i8.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i9.OtpVerifyPage]
class OtpVerifyRoute extends _i10.PageRouteInfo<void> {
  const OtpVerifyRoute()
      : super(
          OtpVerifyRoute.name,
          path: '/verify',
        );

  static const String name = 'OtpVerifyRoute';
}
