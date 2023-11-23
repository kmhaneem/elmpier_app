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
import 'package:auto_route/auto_route.dart' as _i41;
import 'package:flutter/material.dart' as _i42;

import '../../domain/advertisement/model/advertisement.dart' as _i44;
import '../../domain/product/model/product.dart' as _i43;
import '../../domain/wallet/model/wallet.dart' as _i45;
import '../advertisements/advertisement_update/advertisement_update_page.dart'
    as _i37;
import '../advertisements/advertisement_view_page.dart' as _i7;
import '../auth/otp_verify_page.dart' as _i10;
import '../auth/sign_in_page.dart' as _i9;
import '../auth/sign_up_page.dart' as _i8;
import '../chat/all_chat.dart' as _i21;
import '../chat/chat_page.dart' as _i22;
import '../elmpier_plus/elmpier_plus_page.dart' as _i24;
import '../elmpier_plus/elmpier_plus_success_page.dart' as _i25;
import '../home_page.dart' as _i1;
import '../orders/order_status_page.dart' as _i33;
import '../orders/orders.dart' as _i14;
import '../products/add_product.dart' as _i4;
import '../products/advertiser/advertise_product_page.dart' as _i6;
import '../products/cart/cart_page.dart' as _i11;
import '../products/checkout/checkout_page.dart' as _i12;
import '../products/checkout/order_success.dart' as _i13;
import '../products/product/product_filter_page.dart' as _i29;
import '../products/product_page.dart' as _i3;
import '../products/product_update/product_update_page.dart' as _i36;
import '../products/seller/advertisemet-dashboard/active_advertisement_page.dart'
    as _i34;
import '../products/seller/advertisemet-dashboard/expired_advertisement_page.dart'
    as _i35;
import '../products/seller/sell_product_page.dart' as _i5;
import '../products/seller/seller_activity_page.dart' as _i19;
import '../products/seller/seller_advertisement_dashboard_page.dart' as _i18;
import '../products/seller/seller_advertisement_view_page.dart' as _i38;
import '../products/seller/seller_earnings_page.dart' as _i30;
import '../products/seller/seller_product.dart' as _i20;
import '../products/seller/seller_product_dashboard_page.dart' as _i17;
import '../products/seller/seller_product_view.dart' as _i23;
import '../products/seller/sold_product_page.dart' as _i31;
import '../settings/about_us_page.dart' as _i40;
import '../settings/settings_page.dart' as _i32;
import '../settings/terms_conditon_page.dart' as _i39;
import '../splash/splash_page.dart' as _i2;
import '../user/user_profile.dart' as _i16;
import '../user/user_profile_add.dart' as _i15;
import '../wallet/wallet_amount_check_page.dart' as _i28;
import '../wallet/wallet_page.dart' as _i26;
import '../wallet/wallet_success_page.dart' as _i27;

class AppRouter extends _i41.RootStackRouter {
  AppRouter([_i42.GlobalKey<_i42.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i41.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ProductPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    AddProductRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AddProductPage(),
      );
    },
    SellProductRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SellProductPage(),
      );
    },
    AdvertiseProductRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.AdvertiseProductPage(),
      );
    },
    AdvertisementViewRoute.name: (routeData) {
      final args = routeData.argsAs<AdvertisementViewRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.AdvertisementViewPage(
          key: args.key,
          advertisement: args.advertisement,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SignInPage(),
      );
    },
    OtpVerifyRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.OtpVerifyPage(),
      );
    },
    CartRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CartPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>(
          orElse: () => const CheckoutRouteArgs());
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.CheckoutPage(key: args.key),
      );
    },
    OrderSuccessRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.OrderSuccessPage(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.OrdersPage(),
      );
    },
    UserProfileAddRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileAddRouteArgs>(
          orElse: () => const UserProfileAddRouteArgs());
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.UserProfileAddPage(
          key: args.key,
          previousPage: args.previousPage,
          initialMessage: args.initialMessage,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.UserProfilePage(),
      );
    },
    SellerProductDashboardRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.SellerProductDashboardPage(),
      );
    },
    SellerAdvertisementDashboardRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.SellerAdvertisementDashboardPage(),
      );
    },
    SellerActivityRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.SellerActivityPage(),
      );
    },
    SellerProductRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.SellerProductPage(),
      );
    },
    AllChatRoute.name: (routeData) {
      final args = routeData.argsAs<AllChatRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i21.AllChatPage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i22.ChatPage(
          key: args.key,
          otherUserId: args.otherUserId,
          userId: args.userId,
          email: args.email,
        ),
      );
    },
    SellerProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<SellerProductViewRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i23.SellerProductViewPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ElmpierPlusRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.ElmpierPlusPage(),
      );
    },
    ElmpierPlusSuccessRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.ElmpierPlusSuccessPage(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.WalletPage(),
      );
    },
    WalletSuccessRoute.name: (routeData) {
      final args = routeData.argsAs<WalletSuccessRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i27.WalletSuccessPage(
          wallet: args.wallet,
          key: args.key,
        ),
      );
    },
    WalletAmountCheckRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.WalletAmountCheckPage(),
      );
    },
    ProductFilterRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.ProductFilterPage(),
      );
    },
    SellerEarningsRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.SellerEarningsPage(),
      );
    },
    SoldProductRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.SoldProductPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i32.SettingsPage(),
      );
    },
    OrderStatusRoute.name: (routeData) {
      final args = routeData.argsAs<OrderStatusRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i33.OrderStatusPage(
          orderItemId: args.orderItemId,
          key: args.key,
        ),
      );
    },
    ActiveAdvertisementRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i34.ActiveAdvertisementPage(),
      );
    },
    ExpiredAdvertisementRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.ExpiredAdvertisementPage(),
      );
    },
    ProductUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<ProductUpdateRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i36.ProductUpdatePage(
          product: args.product,
          key: args.key,
        ),
      );
    },
    AdvertisementUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<AdvertisementUpdateRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i37.AdvertisementUpdatePage(
          advertisement: args.advertisement,
          key: args.key,
        ),
      );
    },
    SellerAdvertisementViewRoute.name: (routeData) {
      final args = routeData.argsAs<SellerAdvertisementViewRouteArgs>();
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i38.SellerAdvertisementViewPage(
          advertisement: args.advertisement,
          key: args.key,
        ),
      );
    },
    TermsConditonsRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i39.TermsConditonsPage(),
      );
    },
    AboutUsRoute.name: (routeData) {
      return _i41.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i40.AboutUsPage(),
      );
    },
  };

  @override
  List<_i41.RouteConfig> get routes => [
        _i41.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash-page',
          fullMatch: true,
        ),
        _i41.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i41.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i41.RouteConfig(
          ProductRoute.name,
          path: '/product-page',
        ),
        _i41.RouteConfig(
          AddProductRoute.name,
          path: '/add-product',
        ),
        _i41.RouteConfig(
          SellProductRoute.name,
          path: '/sell-product',
        ),
        _i41.RouteConfig(
          AdvertiseProductRoute.name,
          path: '/advertise-product',
        ),
        _i41.RouteConfig(
          AdvertisementViewRoute.name,
          path: '/advertise-view',
        ),
        _i41.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up',
        ),
        _i41.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i41.RouteConfig(
          OtpVerifyRoute.name,
          path: '/verify',
        ),
        _i41.RouteConfig(
          CartRoute.name,
          path: '/cart',
        ),
        _i41.RouteConfig(
          CheckoutRoute.name,
          path: '/checkout',
        ),
        _i41.RouteConfig(
          OrderSuccessRoute.name,
          path: '/order-success',
        ),
        _i41.RouteConfig(
          OrdersRoute.name,
          path: '/orders',
        ),
        _i41.RouteConfig(
          UserProfileAddRoute.name,
          path: '/profile-add',
        ),
        _i41.RouteConfig(
          UserProfileRoute.name,
          path: '/profile',
        ),
        _i41.RouteConfig(
          SellerProductDashboardRoute.name,
          path: '/seller-product-dashboard',
        ),
        _i41.RouteConfig(
          SellerAdvertisementDashboardRoute.name,
          path: '/seller-advertisement-dashboard',
        ),
        _i41.RouteConfig(
          SellerActivityRoute.name,
          path: '/seller-activity',
        ),
        _i41.RouteConfig(
          SellerProductRoute.name,
          path: '/seller-product',
        ),
        _i41.RouteConfig(
          AllChatRoute.name,
          path: '/chats',
        ),
        _i41.RouteConfig(
          ChatRoute.name,
          path: '/chat',
        ),
        _i41.RouteConfig(
          SellerProductViewRoute.name,
          path: '/seller-product-view',
        ),
        _i41.RouteConfig(
          ElmpierPlusRoute.name,
          path: '/elmpier-plus',
        ),
        _i41.RouteConfig(
          ElmpierPlusSuccessRoute.name,
          path: '/elmpier-plus-success',
        ),
        _i41.RouteConfig(
          WalletRoute.name,
          path: '/wallet',
        ),
        _i41.RouteConfig(
          WalletSuccessRoute.name,
          path: '/wallet-success',
        ),
        _i41.RouteConfig(
          WalletAmountCheckRoute.name,
          path: '/wallet-amount-check',
        ),
        _i41.RouteConfig(
          ProductFilterRoute.name,
          path: '/product-filter',
        ),
        _i41.RouteConfig(
          SellerEarningsRoute.name,
          path: '/seller-earnings',
        ),
        _i41.RouteConfig(
          SoldProductRoute.name,
          path: '/sold-products',
        ),
        _i41.RouteConfig(
          SettingsRoute.name,
          path: '/settings',
        ),
        _i41.RouteConfig(
          OrderStatusRoute.name,
          path: '/order-status',
        ),
        _i41.RouteConfig(
          ActiveAdvertisementRoute.name,
          path: '/active-advertisement',
        ),
        _i41.RouteConfig(
          ExpiredAdvertisementRoute.name,
          path: '/expired-advertisement',
        ),
        _i41.RouteConfig(
          ProductUpdateRoute.name,
          path: '/product-update',
        ),
        _i41.RouteConfig(
          AdvertisementUpdateRoute.name,
          path: '/advertisement-update',
        ),
        _i41.RouteConfig(
          SellerAdvertisementViewRoute.name,
          path: '/seller-advertisement-view',
        ),
        _i41.RouteConfig(
          TermsConditonsRoute.name,
          path: '/terms-conditons',
        ),
        _i41.RouteConfig(
          AboutUsRoute.name,
          path: '/about-us',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i41.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i42.Key? key})
      : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i42.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i41.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i41.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i42.Key? key,
    required _i43.Product product,
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

  final _i42.Key? key;

  final _i43.Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i4.AddProductPage]
class AddProductRoute extends _i41.PageRouteInfo<void> {
  const AddProductRoute()
      : super(
          AddProductRoute.name,
          path: '/add-product',
        );

  static const String name = 'AddProductRoute';
}

/// generated route for
/// [_i5.SellProductPage]
class SellProductRoute extends _i41.PageRouteInfo<void> {
  const SellProductRoute()
      : super(
          SellProductRoute.name,
          path: '/sell-product',
        );

  static const String name = 'SellProductRoute';
}

/// generated route for
/// [_i6.AdvertiseProductPage]
class AdvertiseProductRoute extends _i41.PageRouteInfo<void> {
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
    extends _i41.PageRouteInfo<AdvertisementViewRouteArgs> {
  AdvertisementViewRoute({
    _i42.Key? key,
    required _i44.Advertisement advertisement,
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

  final _i42.Key? key;

  final _i44.Advertisement advertisement;

  @override
  String toString() {
    return 'AdvertisementViewRouteArgs{key: $key, advertisement: $advertisement}';
  }
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i41.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i9.SignInPage]
class SignInRoute extends _i41.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i10.OtpVerifyPage]
class OtpVerifyRoute extends _i41.PageRouteInfo<void> {
  const OtpVerifyRoute()
      : super(
          OtpVerifyRoute.name,
          path: '/verify',
        );

  static const String name = 'OtpVerifyRoute';
}

/// generated route for
/// [_i11.CartPage]
class CartRoute extends _i41.PageRouteInfo<void> {
  const CartRoute()
      : super(
          CartRoute.name,
          path: '/cart',
        );

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i12.CheckoutPage]
class CheckoutRoute extends _i41.PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({_i42.Key? key})
      : super(
          CheckoutRoute.name,
          path: '/checkout',
          args: CheckoutRouteArgs(key: key),
        );

  static const String name = 'CheckoutRoute';
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({this.key});

  final _i42.Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.OrderSuccessPage]
class OrderSuccessRoute extends _i41.PageRouteInfo<void> {
  const OrderSuccessRoute()
      : super(
          OrderSuccessRoute.name,
          path: '/order-success',
        );

  static const String name = 'OrderSuccessRoute';
}

/// generated route for
/// [_i14.OrdersPage]
class OrdersRoute extends _i41.PageRouteInfo<void> {
  const OrdersRoute()
      : super(
          OrdersRoute.name,
          path: '/orders',
        );

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i15.UserProfileAddPage]
class UserProfileAddRoute extends _i41.PageRouteInfo<UserProfileAddRouteArgs> {
  UserProfileAddRoute({
    _i42.Key? key,
    String? previousPage,
    String? initialMessage,
  }) : super(
          UserProfileAddRoute.name,
          path: '/profile-add',
          args: UserProfileAddRouteArgs(
            key: key,
            previousPage: previousPage,
            initialMessage: initialMessage,
          ),
        );

  static const String name = 'UserProfileAddRoute';
}

class UserProfileAddRouteArgs {
  const UserProfileAddRouteArgs({
    this.key,
    this.previousPage,
    this.initialMessage,
  });

  final _i42.Key? key;

  final String? previousPage;

  final String? initialMessage;

  @override
  String toString() {
    return 'UserProfileAddRouteArgs{key: $key, previousPage: $previousPage, initialMessage: $initialMessage}';
  }
}

/// generated route for
/// [_i16.UserProfilePage]
class UserProfileRoute extends _i41.PageRouteInfo<void> {
  const UserProfileRoute()
      : super(
          UserProfileRoute.name,
          path: '/profile',
        );

  static const String name = 'UserProfileRoute';
}

/// generated route for
/// [_i17.SellerProductDashboardPage]
class SellerProductDashboardRoute extends _i41.PageRouteInfo<void> {
  const SellerProductDashboardRoute()
      : super(
          SellerProductDashboardRoute.name,
          path: '/seller-product-dashboard',
        );

  static const String name = 'SellerProductDashboardRoute';
}

/// generated route for
/// [_i18.SellerAdvertisementDashboardPage]
class SellerAdvertisementDashboardRoute extends _i41.PageRouteInfo<void> {
  const SellerAdvertisementDashboardRoute()
      : super(
          SellerAdvertisementDashboardRoute.name,
          path: '/seller-advertisement-dashboard',
        );

  static const String name = 'SellerAdvertisementDashboardRoute';
}

/// generated route for
/// [_i19.SellerActivityPage]
class SellerActivityRoute extends _i41.PageRouteInfo<void> {
  const SellerActivityRoute()
      : super(
          SellerActivityRoute.name,
          path: '/seller-activity',
        );

  static const String name = 'SellerActivityRoute';
}

/// generated route for
/// [_i20.SellerProductPage]
class SellerProductRoute extends _i41.PageRouteInfo<void> {
  const SellerProductRoute()
      : super(
          SellerProductRoute.name,
          path: '/seller-product',
        );

  static const String name = 'SellerProductRoute';
}

/// generated route for
/// [_i21.AllChatPage]
class AllChatRoute extends _i41.PageRouteInfo<AllChatRouteArgs> {
  AllChatRoute({
    _i42.Key? key,
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

  final _i42.Key? key;

  final String userId;

  @override
  String toString() {
    return 'AllChatRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i22.ChatPage]
class ChatRoute extends _i41.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i42.Key? key,
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

  final _i42.Key? key;

  final String otherUserId;

  final String userId;

  final String email;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, otherUserId: $otherUserId, userId: $userId, email: $email}';
  }
}

/// generated route for
/// [_i23.SellerProductViewPage]
class SellerProductViewRoute
    extends _i41.PageRouteInfo<SellerProductViewRouteArgs> {
  SellerProductViewRoute({
    _i42.Key? key,
    required _i43.Product product,
  }) : super(
          SellerProductViewRoute.name,
          path: '/seller-product-view',
          args: SellerProductViewRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'SellerProductViewRoute';
}

class SellerProductViewRouteArgs {
  const SellerProductViewRouteArgs({
    this.key,
    required this.product,
  });

  final _i42.Key? key;

  final _i43.Product product;

  @override
  String toString() {
    return 'SellerProductViewRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i24.ElmpierPlusPage]
class ElmpierPlusRoute extends _i41.PageRouteInfo<void> {
  const ElmpierPlusRoute()
      : super(
          ElmpierPlusRoute.name,
          path: '/elmpier-plus',
        );

  static const String name = 'ElmpierPlusRoute';
}

/// generated route for
/// [_i25.ElmpierPlusSuccessPage]
class ElmpierPlusSuccessRoute extends _i41.PageRouteInfo<void> {
  const ElmpierPlusSuccessRoute()
      : super(
          ElmpierPlusSuccessRoute.name,
          path: '/elmpier-plus-success',
        );

  static const String name = 'ElmpierPlusSuccessRoute';
}

/// generated route for
/// [_i26.WalletPage]
class WalletRoute extends _i41.PageRouteInfo<void> {
  const WalletRoute()
      : super(
          WalletRoute.name,
          path: '/wallet',
        );

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i27.WalletSuccessPage]
class WalletSuccessRoute extends _i41.PageRouteInfo<WalletSuccessRouteArgs> {
  WalletSuccessRoute({
    required _i45.Wallet wallet,
    _i42.Key? key,
  }) : super(
          WalletSuccessRoute.name,
          path: '/wallet-success',
          args: WalletSuccessRouteArgs(
            wallet: wallet,
            key: key,
          ),
        );

  static const String name = 'WalletSuccessRoute';
}

class WalletSuccessRouteArgs {
  const WalletSuccessRouteArgs({
    required this.wallet,
    this.key,
  });

  final _i45.Wallet wallet;

  final _i42.Key? key;

  @override
  String toString() {
    return 'WalletSuccessRouteArgs{wallet: $wallet, key: $key}';
  }
}

/// generated route for
/// [_i28.WalletAmountCheckPage]
class WalletAmountCheckRoute extends _i41.PageRouteInfo<void> {
  const WalletAmountCheckRoute()
      : super(
          WalletAmountCheckRoute.name,
          path: '/wallet-amount-check',
        );

  static const String name = 'WalletAmountCheckRoute';
}

/// generated route for
/// [_i29.ProductFilterPage]
class ProductFilterRoute extends _i41.PageRouteInfo<void> {
  const ProductFilterRoute()
      : super(
          ProductFilterRoute.name,
          path: '/product-filter',
        );

  static const String name = 'ProductFilterRoute';
}

/// generated route for
/// [_i30.SellerEarningsPage]
class SellerEarningsRoute extends _i41.PageRouteInfo<void> {
  const SellerEarningsRoute()
      : super(
          SellerEarningsRoute.name,
          path: '/seller-earnings',
        );

  static const String name = 'SellerEarningsRoute';
}

/// generated route for
/// [_i31.SoldProductPage]
class SoldProductRoute extends _i41.PageRouteInfo<void> {
  const SoldProductRoute()
      : super(
          SoldProductRoute.name,
          path: '/sold-products',
        );

  static const String name = 'SoldProductRoute';
}

/// generated route for
/// [_i32.SettingsPage]
class SettingsRoute extends _i41.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i33.OrderStatusPage]
class OrderStatusRoute extends _i41.PageRouteInfo<OrderStatusRouteArgs> {
  OrderStatusRoute({
    required int orderItemId,
    _i42.Key? key,
  }) : super(
          OrderStatusRoute.name,
          path: '/order-status',
          args: OrderStatusRouteArgs(
            orderItemId: orderItemId,
            key: key,
          ),
        );

  static const String name = 'OrderStatusRoute';
}

class OrderStatusRouteArgs {
  const OrderStatusRouteArgs({
    required this.orderItemId,
    this.key,
  });

  final int orderItemId;

  final _i42.Key? key;

  @override
  String toString() {
    return 'OrderStatusRouteArgs{orderItemId: $orderItemId, key: $key}';
  }
}

/// generated route for
/// [_i34.ActiveAdvertisementPage]
class ActiveAdvertisementRoute extends _i41.PageRouteInfo<void> {
  const ActiveAdvertisementRoute()
      : super(
          ActiveAdvertisementRoute.name,
          path: '/active-advertisement',
        );

  static const String name = 'ActiveAdvertisementRoute';
}

/// generated route for
/// [_i35.ExpiredAdvertisementPage]
class ExpiredAdvertisementRoute extends _i41.PageRouteInfo<void> {
  const ExpiredAdvertisementRoute()
      : super(
          ExpiredAdvertisementRoute.name,
          path: '/expired-advertisement',
        );

  static const String name = 'ExpiredAdvertisementRoute';
}

/// generated route for
/// [_i36.ProductUpdatePage]
class ProductUpdateRoute extends _i41.PageRouteInfo<ProductUpdateRouteArgs> {
  ProductUpdateRoute({
    required _i43.Product product,
    _i42.Key? key,
  }) : super(
          ProductUpdateRoute.name,
          path: '/product-update',
          args: ProductUpdateRouteArgs(
            product: product,
            key: key,
          ),
        );

  static const String name = 'ProductUpdateRoute';
}

class ProductUpdateRouteArgs {
  const ProductUpdateRouteArgs({
    required this.product,
    this.key,
  });

  final _i43.Product product;

  final _i42.Key? key;

  @override
  String toString() {
    return 'ProductUpdateRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [_i37.AdvertisementUpdatePage]
class AdvertisementUpdateRoute
    extends _i41.PageRouteInfo<AdvertisementUpdateRouteArgs> {
  AdvertisementUpdateRoute({
    required _i44.Advertisement advertisement,
    _i42.Key? key,
  }) : super(
          AdvertisementUpdateRoute.name,
          path: '/advertisement-update',
          args: AdvertisementUpdateRouteArgs(
            advertisement: advertisement,
            key: key,
          ),
        );

  static const String name = 'AdvertisementUpdateRoute';
}

class AdvertisementUpdateRouteArgs {
  const AdvertisementUpdateRouteArgs({
    required this.advertisement,
    this.key,
  });

  final _i44.Advertisement advertisement;

  final _i42.Key? key;

  @override
  String toString() {
    return 'AdvertisementUpdateRouteArgs{advertisement: $advertisement, key: $key}';
  }
}

/// generated route for
/// [_i38.SellerAdvertisementViewPage]
class SellerAdvertisementViewRoute
    extends _i41.PageRouteInfo<SellerAdvertisementViewRouteArgs> {
  SellerAdvertisementViewRoute({
    required _i44.Advertisement advertisement,
    _i42.Key? key,
  }) : super(
          SellerAdvertisementViewRoute.name,
          path: '/seller-advertisement-view',
          args: SellerAdvertisementViewRouteArgs(
            advertisement: advertisement,
            key: key,
          ),
        );

  static const String name = 'SellerAdvertisementViewRoute';
}

class SellerAdvertisementViewRouteArgs {
  const SellerAdvertisementViewRouteArgs({
    required this.advertisement,
    this.key,
  });

  final _i44.Advertisement advertisement;

  final _i42.Key? key;

  @override
  String toString() {
    return 'SellerAdvertisementViewRouteArgs{advertisement: $advertisement, key: $key}';
  }
}

/// generated route for
/// [_i39.TermsConditonsPage]
class TermsConditonsRoute extends _i41.PageRouteInfo<void> {
  const TermsConditonsRoute()
      : super(
          TermsConditonsRoute.name,
          path: '/terms-conditons',
        );

  static const String name = 'TermsConditonsRoute';
}

/// generated route for
/// [_i40.AboutUsPage]
class AboutUsRoute extends _i41.PageRouteInfo<void> {
  const AboutUsRoute()
      : super(
          AboutUsRoute.name,
          path: '/about-us',
        );

  static const String name = 'AboutUsRoute';
}
