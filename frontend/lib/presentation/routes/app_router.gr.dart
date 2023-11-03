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
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;

import '../../domain/advertisement/model/advertisement.dart' as _i24;
import '../../domain/product/model/product.dart' as _i23;
import '../advertisements/advertisement_view_page.dart' as _i7;
import '../auth/otp_verify_page.dart' as _i10;
import '../auth/sign_in_page.dart' as _i9;
import '../auth/sign_up_page.dart' as _i8;
import '../chat/all_chat.dart' as _i19;
import '../chat/chat_page.dart' as _i20;
import '../home_page.dart' as _i1;
import '../orders.dart' as _i14;
import '../products/add_product.dart' as _i4;
import '../products/advertiser/advertise_product_page.dart' as _i6;
import '../products/cart/cart_page.dart' as _i11;
import '../products/checkout/checkout_page.dart' as _i12;
import '../products/checkout/order_success.dart' as _i13;
import '../products/product_page.dart' as _i3;
import '../products/seller/sell_product_page.dart' as _i5;
import '../products/seller/seller_page.dart' as _i17;
import '../products/seller/seller_product.dart' as _i18;
import '../splash/splash_page.dart' as _i2;
import '../user/user_profile.dart' as _i16;
import '../user/user_profile_add.dart' as _i15;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ProductPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    AddProductRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AddProductPage(),
      );
    },
    SellProductRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SellProductPage(),
      );
    },
    AdvertiseProductRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AdvertiseProductPage(),
      );
    },
    AdvertisementViewRoute.name: (routeData) {
      final args = routeData.argsAs<AdvertisementViewRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.AdvertisementViewPage(
          key: args.key,
          advertisement: args.advertisement,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SignInPage(),
      );
    },
    OtpVerifyRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.OtpVerifyPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CartPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.CheckoutPage(key: args.key),
      );
    },
    OrderSuccessRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.OrderSuccessPage(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.OrdersPage(),
      );
    },
    UserProfileAddRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileAddRouteArgs>(
          orElse: () => const UserProfileAddRouteArgs());
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.UserProfileAddPage(
          previousPage: args.previousPage,
          key: args.key,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.UserProfilePage(),
      );
    },
    SellerRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.SellerPage(),
      );
    },
    SellerProductRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.SellerProductPage(),
      );
    },
    AllChatRoute.name: (routeData) {
      final args = routeData.argsAs<AllChatRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.AllChatPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.ChatPage(
          key: args.key,
          otherUserId: args.otherUserId,
          userId: args.userId,
          email: args.email,
        ),
      );
    },
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash-page',
          fullMatch: true,
        ),
        _i21.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i21.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i21.RouteConfig(
          ProductRoute.name,
          path: '/product-page',
        ),
        _i21.RouteConfig(
          AddProductRoute.name,
          path: '/add-product',
        ),
        _i21.RouteConfig(
          SellProductRoute.name,
          path: '/sell-product',
        ),
        _i21.RouteConfig(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        ),
        _i21.RouteConfig(
          AdvertisementViewRoute.name,
          path: '/advertise-view',
        ),
        _i21.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up',
        ),
        _i21.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i21.RouteConfig(
          OtpVerifyRoute.name,
          path: '/verify',
        ),
        _i21.RouteConfig(
          CartRoute.name,
          path: '/cart',
        ),
        _i21.RouteConfig(
          CheckoutRoute.name,
          path: '/checkout',
        ),
        _i21.RouteConfig(
          OrderSuccessRoute.name,
          path: '/order-success',
        ),
        _i21.RouteConfig(
          OrdersRoute.name,
          path: '/orders',
        ),
        _i21.RouteConfig(
          UserProfileAddRoute.name,
          path: '/profile-add',
        ),
        _i21.RouteConfig(
          UserProfileRoute.name,
          path: '/profile',
        ),
        _i21.RouteConfig(
          SellerRoute.name,
          path: '/seller',
        ),
        _i21.RouteConfig(
          SellerProductRoute.name,
          path: '/seller-product',
        ),
        _i21.RouteConfig(
          AllChatRoute.name,
          path: '/chats',
        ),
        _i21.RouteConfig(
          ChatRoute.name,
          path: '/chat',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i21.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i22.Key? key})
      : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i21.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i21.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i22.Key? key,
    required _i23.Product product,
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

  final _i22.Key? key;

  final _i23.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.AddProductPage]
class AddProductRoute extends _i21.PageRouteInfo<void> {
  const AddProductRoute()
      : super(
          AddProductRoute.name,
          path: '/add-product',
        );

  static const String name = 'AddProductRoute';
}

/// generated route for
/// [_i5.SellProductPage]
class SellProductRoute extends _i21.PageRouteInfo<void> {
  const SellProductRoute()
      : super(
          SellProductRoute.name,
          path: '/sell-product',
        );

  static const String name = 'SellProductRoute';
}

/// generated route for
/// [_i6.AdvertiseProductPage]
class AdvertiseProductRoute extends _i21.PageRouteInfo<void> {
  const AdvertiseProductRoute()
      : super(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        );

  static const String name = 'AdvertiseProductRoute';
}

/// generated route for
/// [_i7.AdvertisementViewPage]
class AdvertisementViewRoute
    extends _i21.PageRouteInfo<AdvertisementViewRouteArgs> {
  AdvertisementViewRoute({
    _i22.Key? key,
    required _i24.Advertisement advertisement,
  }) : super(
          AdvertisementViewRoute.name,
          path: '/advertise-view',
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

  final _i22.Key? key;

  final _i24.Advertisement advertisement;

  @override
  String toString() {
    return 'AdvertisementViewRouteArgs{key: $key, advertisement: $advertisement}';
  }
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i21.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.SignInPage]
class SignInRoute extends _i21.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i10.OtpVerifyPage]
class OtpVerifyRoute extends _i21.PageRouteInfo<void> {
  const OtpVerifyRoute()
      : super(
          OtpVerifyRoute.name,
          path: '/verify',
        );

  static const String name = 'OtpVerifyRoute';
}

/// generated route for
/// [_i11.CartPage]
class CartRoute extends _i21.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i12.CheckoutPage]
class CheckoutRoute extends _i21.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({_i22.Key? key})
      : super(
          CheckoutRoute.name,
          path: '/checkout',
          args: CheckoutRouteArgs(key: key),
        );

  static const String name = 'CheckoutRoute';
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.OrderSuccessPage]
class OrderSuccessRoute extends _i21.PageRouteInfo<void> {
  const OrderSuccessRoute()
      : super(
          OrderSuccessRoute.name,
          path: '/order-success',
        );

  static const String name = 'OrderSuccessRoute';
}

/// generated route for
/// [_i14.OrdersPage]
class OrdersRoute extends _i21.PageRouteInfo<void> {
  const OrdersRoute()
      : super(
          OrdersRoute.name,
          path: '/orders',
        );

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i15.UserProfileAddPage]
class UserProfileAddRoute extends _i21.PageRouteInfo<UserProfileAddRouteArgs> {
  UserProfileAddRoute({
    String? previousPage,
    _i22.Key? key,
  }) : super(
          UserProfileAddRoute.name,
          path: '/profile-add',
          args: UserProfileAddRouteArgs(
            previousPage: previousPage,
            key: key,
          ),
        );

  static const String name = 'UserProfileAddRoute';
}

class UserProfileAddRouteArgs {
  const UserProfileAddRouteArgs({
    this.previousPage,
    this.key,
  });

  final String? previousPage;

  final _i22.Key? key;

  @override
  String toString() {
    return 'UserProfileAddRouteArgs{previousPage: $previousPage, key: $key}';
  }
}

/// generated route for
/// [_i16.UserProfilePage]
class UserProfileRoute extends _i21.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(
          UserProfileRoute.name,
          path: '/profile',
        );

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i17.SellerPage]
class SellerRoute extends _i21.PageRouteInfo<void> {
  const SellerRoute()
      : super(
          SellerRoute.name,
          path: '/seller',
        );

  static const String name = 'SellerRoute';
}

/// generated route for
/// [_i18.SellerProductPage]
class SellerProductRoute extends _i21.PageRouteInfo<void> {
  const SellerProductRoute()
      : super(
          SellerProductRoute.name,
          path: '/seller-product',
        );

  static const String name = 'SellerProductRoute';
}

/// generated route for
/// [_i19.AllChatPage]
class AllChatRoute extends _i21.PageRouteInfo<AllChatRouteArgs> {
  AllChatRoute({
    _i22.Key? key,
    required String userId,
  }) : super(
          AllChatRoute.name,
          path: '/chats',
          args: AllChatRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'AllChatRoute';
}

class AllChatRouteArgs {
  const AllChatRouteArgs({
    this.key,
    required this.userId,
  });

  final _i22.Key? key;

  final String userId;

  @override
  String toString() {
    return 'AllChatRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i20.ChatPage]
class ChatRoute extends _i21.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i22.Key? key,
    required String otherUserId,
    required String userId,
    required String email,
  }) : super(
          ChatRoute.name,
          path: '/chat',
          args: ChatRouteArgs(
            key: key,
            otherUserId: otherUserId,
            userId: userId,
            email: email,
          ),
        );

  static const String name = 'ChatRoute';
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.otherUserId,
    required this.userId,
    required this.email,
  });

  final _i22.Key? key;

  final String otherUserId;

  final String userId;

  final String email;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, otherUserId: $otherUserId, userId: $userId, email: $email}';
  }
}
