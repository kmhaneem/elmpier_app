import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/advertisements/advertisement_view_page.dart';
import 'package:frontend/presentation/auth/otp_verify_page.dart';
import 'package:frontend/presentation/auth/sign_in_page.dart';
import 'package:frontend/presentation/auth/sign_up_page.dart';
import 'package:frontend/presentation/chat/all_chat.dart';
import 'package:frontend/presentation/chat/chat_page.dart';
import 'package:frontend/presentation/home_page.dart';
import 'package:frontend/presentation/orders.dart';
import 'package:frontend/presentation/products/add_product.dart';
import 'package:frontend/presentation/products/advertiser/advertise_product_page.dart';
import 'package:frontend/presentation/products/cart/cart_page.dart';
import 'package:frontend/presentation/products/checkout/checkout_page.dart';
import 'package:frontend/presentation/products/checkout/order_success.dart';
import 'package:frontend/presentation/products/product_page.dart';
import 'package:frontend/presentation/products/seller/sell_product_page.dart';
import 'package:frontend/presentation/products/seller/seller_page.dart';
import 'package:frontend/presentation/products/seller/seller_product.dart';
import 'package:frontend/presentation/splash/splash_page.dart';
import 'package:frontend/presentation/user/user_profile.dart';
import 'package:frontend/presentation/user/user_profile_add.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: HomePage, path: "/home"),
  MaterialRoute(page: SplashPage, path: "/splash-page", initial: true),
  MaterialRoute(page: ProductPage, path: "/product-page"),
  MaterialRoute(page: AddProductPage, path: "/add-product"),
  MaterialRoute(page: SellProductPage, path: "/sell-product"),
  MaterialRoute(page: AdvertiseProductPage, path: "/advertise-product"),
  MaterialRoute(page: AdvertisementViewPage, path: "/advertise-view"),
  MaterialRoute(page: SignUpPage, path: "/sign-up"),
  MaterialRoute(page: SignInPage, path: "/sign-in"),
  MaterialRoute(page: OtpVerifyPage, path: "/verify"),
  MaterialRoute(page: CartPage, path: "/cart"),
  MaterialRoute(page: CheckoutPage, path: "/checkout"),
  MaterialRoute(page: OrderSuccessPage, path: "/order-success"),
  MaterialRoute(page: OrdersPage, path: "/orders"),
  MaterialRoute(page: UserProfileAddPage, path: "/profile-add"),
  MaterialRoute(page: UserProfilePage, path: "/profile"),
  MaterialRoute(page: SellerPage, path: "/seller"),
  MaterialRoute(page: SellerProductPage, path: "/seller-product"),
  MaterialRoute(page: AllChatPage, path: "/chats"),
  MaterialRoute(page: ChatPage, path: "/chat"),
], replaceInRouteName: 'Page,Route')

class $AppRouter {
  String? previousPage;
}
