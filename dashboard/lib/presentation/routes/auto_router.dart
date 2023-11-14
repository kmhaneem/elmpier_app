import 'package:auto_route/auto_route.dart';
import 'package:dashboard/presentation/auth/sign_in_page.dart';
import 'package:dashboard/presentation/home_page.dart';
import 'package:dashboard/presentation/product/product_page.dart';
import 'package:dashboard/presentation/product/product_view_page.dart';
import 'package:dashboard/presentation/product/review/review_product_page.dart';
import 'package:dashboard/presentation/product/review/review_product_view_page.dart';
import 'package:dashboard/presentation/splash/splash_page.dart';
import 'package:dashboard/presentation/transaction/transaction_page.dart';
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
], replaceInRouteName: 'Page,Route')
class $AppRouter {}
