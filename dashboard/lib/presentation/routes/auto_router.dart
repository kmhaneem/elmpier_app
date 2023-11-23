import 'package:auto_route/auto_route.dart';
import 'package:dashboard/presentation/admin_page.dart';
import 'package:dashboard/presentation/advertisement/advertisement_view_page.dart';
import 'package:dashboard/presentation/advertisement/all_advertisement_page.dart';
import 'package:dashboard/presentation/advertisement/approved_advertisement_page.dart';
import 'package:dashboard/presentation/advertisement/pending_advertisement_page.dart';
import 'package:dashboard/presentation/advertisement/pending_advertisement_view_page.dart';
import 'package:dashboard/presentation/advertisement/rejected_adverisement_page.dart';
import 'package:dashboard/presentation/auth/sign_in_page.dart';
import 'package:dashboard/presentation/home_page.dart';
import 'package:dashboard/presentation/main-pages/advertisement_page.dart';
import 'package:dashboard/presentation/main-pages/classfication_page.dart';
import 'package:dashboard/presentation/main-pages/delivery_user_page.dart';
import 'package:dashboard/presentation/main-pages/orders_page.dart';
import 'package:dashboard/presentation/main-pages/product_page.dart';
import 'package:dashboard/presentation/main-pages/reject_review_page.dart';
import 'package:dashboard/presentation/main-pages/transactions_page.dart';
import 'package:dashboard/presentation/main-pages/users_page.dart';
import 'package:dashboard/presentation/orders/ads_order_items_page.dart';
import 'package:dashboard/presentation/orders/product_order_items_page.dart';
import 'package:dashboard/presentation/product/all_products_page.dart';
import 'package:dashboard/presentation/product/approved_products_page.dart';
import 'package:dashboard/presentation/product/pending_product_view_page.dart';
import 'package:dashboard/presentation/product/pending_products_page.dart';
import 'package:dashboard/presentation/product/product_page.dart';
import 'package:dashboard/presentation/product/product_view_page.dart';
import 'package:dashboard/presentation/product/rejected_products_page.dart';
import 'package:dashboard/presentation/product/review/review_product_page.dart';
import 'package:dashboard/presentation/product/review/review_product_view_page.dart';
import 'package:dashboard/presentation/splash/splash_page.dart';
import 'package:dashboard/presentation/transaction/transaction_page.dart';
import 'package:dashboard/presentation/users/all_users_page.dart';
import 'package:dashboard/presentation/users/normal_users_page.dart';
import 'package:dashboard/presentation/users/plus_users_page.dart';
import 'package:dashboard/presentation/users/user_page.dart';
import 'package:dashboard/presentation/users/view_user_page.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SplashPage, path: "/splash", initial: true),
  MaterialRoute(page: SignInPage, path: "/sign-in"),
  MaterialRoute(page: HomePage, path: "/home"),
  MaterialRoute(page: ProductPage, path: "/view-product"),
  MaterialRoute(page: ProductViewPage, path: "/view-product-view"),
  MaterialRoute(page: ReviewProductPage, path: "/view-product-review"),
  MaterialRoute(page: ReviewProductViewPage, path: "/view-product-review-view"),
  MaterialRoute(page: UserPage, path: "/user"),
  MaterialRoute(page: ViewUserPage, path: "/view-user"),
  MaterialRoute(page: TransactionPage, path: "/transcation"),

  MaterialRoute(page: AdvertisementPage, path: "/advertisement"),
  MaterialRoute(page: ClassificationPage, path: "/classification"),
  MaterialRoute(page: DeliveryUserPage, path: "/delivery-user"),
  MaterialRoute(page: OrdersPage, path: "/orders"),
  MaterialRoute(page: ProductsPage, path: "/products"),
  MaterialRoute(page: RejectReviewPage, path: "/reject-review"),
  MaterialRoute(page: TransactionsPage, path: "/transactions"),
  MaterialRoute(page: UsersPage, path: "/users"),

  MaterialRoute(page: AllProductsPage, path: "/all-products"),
  MaterialRoute(page: ApporovedProductsPage, path: "/approved-products"),
  MaterialRoute(page: PendingProductsPage, path: "/pending-products"),
  MaterialRoute(page: RejectedProductsPage, path: "/rejected-products"),

  MaterialRoute(page: AllAdvertisementPage, path: "/all-advertisements"),
  MaterialRoute(page: ApprovedAdvertisementPage, path: "/approved-advertisement"),
  MaterialRoute(page: PendingAdvertisementPage, path: "/pending-advertisement"),
  MaterialRoute(page: RejectedAdvertisementPage, path: "/rejected-advertisement"),

  MaterialRoute(page: AdsOrderItemsPage, path: "/ads-order-items"),
  MaterialRoute(page: ProductsOrderItemsPage, path: "/products-order-item"),

  MaterialRoute(page: AllUsersPage, path: "/all-users"),
  MaterialRoute(page: NormalUsersPage, path: "/normal-users"),
  MaterialRoute(page: PlusUsersPage, path: "/plus-users"),
  MaterialRoute(page: PendingProductViewPage, path: "/pending-products-view"),


  MaterialRoute(page: AdvertisementViewPage, path: "/advertisement-view"),
  MaterialRoute(page: PendingAdvertisementViewPage, path: "/pending-advertisement-view"),
  MaterialRoute(page: AdminPage, path: "/admin"),



], replaceInRouteName: 'Page,Route')
class $AppRouter {}
