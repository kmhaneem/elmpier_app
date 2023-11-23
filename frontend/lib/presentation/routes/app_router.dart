import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/advertisements/advertisement_update/advertisement_update_page.dart';
import 'package:frontend/presentation/advertisements/advertisement_view_page.dart';
import 'package:frontend/presentation/auth/otp_verify_page.dart';
import 'package:frontend/presentation/auth/sign_in_page.dart';
import 'package:frontend/presentation/auth/sign_up_page.dart';
import 'package:frontend/presentation/chat/all_chat.dart';
import 'package:frontend/presentation/chat/chat_page.dart';
import 'package:frontend/presentation/elmpier_plus/elmpier_plus_page.dart';
import 'package:frontend/presentation/elmpier_plus/elmpier_plus_success_page.dart';
import 'package:frontend/presentation/home_page.dart';
import 'package:frontend/presentation/orders/order_status_page.dart';
import 'package:frontend/presentation/orders/orders.dart';
import 'package:frontend/presentation/products/add_product.dart';
import 'package:frontend/presentation/products/advertiser/advertise_product_page.dart';
import 'package:frontend/presentation/products/cart/cart_page.dart';
import 'package:frontend/presentation/products/checkout/checkout_page.dart';
import 'package:frontend/presentation/products/checkout/order_success.dart';
import 'package:frontend/presentation/products/product/product_filter_page.dart';
import 'package:frontend/presentation/products/product_page.dart';
import 'package:frontend/presentation/products/product_update/product_update_page.dart';
import 'package:frontend/presentation/products/seller/advertisemet-dashboard/active_advertisement_page.dart';
import 'package:frontend/presentation/products/seller/advertisemet-dashboard/expired_advertisement_page.dart';
import 'package:frontend/presentation/products/seller/sell_product_page.dart';
import 'package:frontend/presentation/products/seller/seller_advertisement_dashboard_page.dart';
import 'package:frontend/presentation/products/seller/seller_advertisement_view_page.dart';
import 'package:frontend/presentation/products/seller/seller_earnings_page.dart';
import 'package:frontend/presentation/products/seller/seller_activity_page.dart';
import 'package:frontend/presentation/products/seller/seller_product_dashboard_page.dart';
import 'package:frontend/presentation/products/seller/seller_product.dart';
import 'package:frontend/presentation/products/seller/seller_product_view.dart';
import 'package:frontend/presentation/products/seller/sold_product_page.dart';
import 'package:frontend/presentation/settings/about_us_page.dart';
import 'package:frontend/presentation/settings/settings_page.dart';
import 'package:frontend/presentation/settings/terms_conditon_page.dart';
import 'package:frontend/presentation/splash/splash_page.dart';
import 'package:frontend/presentation/user/user_profile.dart';
import 'package:frontend/presentation/user/user_profile_add.dart';
import 'package:frontend/presentation/wallet/wallet_amount_check_page.dart';
import 'package:frontend/presentation/wallet/wallet_page.dart';
import 'package:frontend/presentation/wallet/wallet_success_page.dart';

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
  MaterialRoute(
      page: SellerProductDashboardPage, path: "/seller-product-dashboard"),
  MaterialRoute(
      page: SellerAdvertisementDashboardPage,
      path: "/seller-advertisement-dashboard"),
  MaterialRoute(page: SellerActivityPage, path: "/seller-activity"),
  MaterialRoute(page: SellerProductPage, path: "/seller-product"),
  MaterialRoute(page: AllChatPage, path: "/chats"),
  MaterialRoute(page: ChatPage, path: "/chat"),
  MaterialRoute(page: SellerProductViewPage, path: "/seller-product-view"),
  MaterialRoute(page: ElmpierPlusPage, path: "/elmpier-plus"),
  MaterialRoute(page: ElmpierPlusSuccessPage, path: "/elmpier-plus-success"),
  MaterialRoute(page: WalletPage, path: "/wallet"),
  MaterialRoute(page: WalletSuccessPage, path: "/wallet-success"),
  MaterialRoute(page: WalletAmountCheckPage, path: "/wallet-amount-check"),
  MaterialRoute(page: ProductFilterPage, path: "/product-filter"),
  MaterialRoute(page: SellerEarningsPage, path: "/seller-earnings"),
  MaterialRoute(page: SoldProductPage, path: "/sold-products"),
  MaterialRoute(page: SettingsPage, path: "/settings"),
  MaterialRoute(page: OrderStatusPage, path: "/order-status"),
  MaterialRoute(page: ActiveAdvertisementPage, path: "/active-advertisement"),
  MaterialRoute(page: ExpiredAdvertisementPage, path: "/expired-advertisement"),
  MaterialRoute(page: ProductUpdatePage, path: "/product-update"),
  MaterialRoute(page: AdvertisementUpdatePage, path: "/advertisement-update"),
  MaterialRoute(
      page: SellerAdvertisementViewPage, path: "/seller-advertisement-view"),
  MaterialRoute(page: TermsConditonsPage, path: "/terms-conditons"),
  MaterialRoute(page: AboutUsPage, path: "/about-us"),
], replaceInRouteName: 'Page,Route')
class $AppRouter {
  String? previousPage;
}
