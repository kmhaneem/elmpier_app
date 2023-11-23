import 'package:dashboard/application/advertisment/advertisement_state.dart';
import 'package:dashboard/application/advertisment/all_advertisement/all_advertisemet_notifier.dart';
import 'package:dashboard/application/advertisment/approved_advertisement/approved_advertisement_notifier.dart';
import 'package:dashboard/application/advertisment/pending_advertisement/pending_advertisement_notifier.dart';
import 'package:dashboard/application/advertisment/rejected_advertisement/rejected_advertisement_notifier.dart';
import 'package:dashboard/application/auth/auth_notifier.dart';
import 'package:dashboard/application/auth/auth_state.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_notifier.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_state.dart';
import 'package:dashboard/application/delivery_person/delivery_person_notifier.dart';
import 'package:dashboard/application/delivery_person/delivery_person_state.dart';
import 'package:dashboard/application/orders/ads_orders/ads_orders_notifier.dart';
import 'package:dashboard/application/orders/orders_notifier.dart';
import 'package:dashboard/application/orders/orders_state.dart';
import 'package:dashboard/application/orders/product_orders/product_orders.dart';
import 'package:dashboard/application/product/all_products/all_products_notifier.dart';
import 'package:dashboard/application/product/approved_products/approved_product_notifier.dart';
import 'package:dashboard/application/product/pending_products/pending_product_notifier.dart';
import 'package:dashboard/application/product/product_notifier.dart';
import 'package:dashboard/application/product/product_state.dart';
import 'package:dashboard/application/product/reject_reviews/reject_reviews.dart';
import 'package:dashboard/application/product/rejected_products/rejected_product_notifier.dart';
import 'package:dashboard/application/transaction/transaction_notifier.dart';
import 'package:dashboard/application/transaction/transaction_state.dart';
import 'package:dashboard/application/users/normal_users/normal_users_notifier.dart';
import 'package:dashboard/application/users/plus_users/plus_users_notifier.dart';
import 'package:dashboard/application/users/users_notifier.dart';
import 'package:dashboard/application/users/users_state.dart';
import 'package:dashboard/infrastructure/advertisement/dto/advertisement_repository.dart';
import 'package:dashboard/infrastructure/auth/auth_repository.dart';
import 'package:dashboard/infrastructure/delivery_person/dto/delivery_person_repository.dart';
import 'package:dashboard/infrastructure/orders/orders_repository.dart';
import 'package:dashboard/infrastructure/product/product_repository.dart';
import 'package:dashboard/infrastructure/transaction/transcation_repository.dart';
import 'package:dashboard/infrastructure/user/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/product/review/product_status_notifier.dart';
import '../application/product/review/product_status_state.dart';

final authRepositoryProvider = Provider(((ref) => AuthRepository(Dio())));
final productRepositoryProvider = Provider(((ref) => ProductRepository(Dio())));
final advertisementRepositoryProvider =
    Provider(((ref) => AdvertisementRepository(Dio())));
final ordersRepositoryProvider = Provider(((ref) => OrdersRepository(Dio())));
final userRepositoryProvider = Provider(((ref) => UserRepository(Dio())));
final transactionRepositoryProvider =
    Provider(((ref) => TransactionRepository(Dio())));

final deliveryPersonRepositoryProvider =
    Provider(((ref) => DeliveryPersonRepository(Dio())));

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
    ((ref) => SignInNotifier(ref.watch(authRepositoryProvider))));

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
    (ref) => ProductNotifier(ref.watch(productRepositoryProvider)));

final allProductProvider =
    StateNotifierProvider<AllProductsNotifier, ProductState>(
        (ref) => AllProductsNotifier(ref.watch(productRepositoryProvider)));

final approvedProductProvider =
    StateNotifierProvider<ApprovedProductNotifier, ProductState>(
        (ref) => ApprovedProductNotifier(ref.watch(productRepositoryProvider)));

final pendingProductProvider =
    StateNotifierProvider<PendingProductNotifier, ProductState>(
        (ref) => PendingProductNotifier(ref.watch(productRepositoryProvider)));

final rejectedProductProvider =
    StateNotifierProvider<RejectedProductNotifier, ProductState>(
        (ref) => RejectedProductNotifier(ref.watch(productRepositoryProvider)));

final allAdvertisementProvider =
    StateNotifierProvider<AllAdvertisementNotifier, AdvertisementState>((ref) =>
        AllAdvertisementNotifier(ref.watch(advertisementRepositoryProvider)));

final approvedAdvertisementProvider =
    StateNotifierProvider<ApprovedAdvertisementNotifier, AdvertisementState>(
        (ref) => ApprovedAdvertisementNotifier(
            ref.watch(advertisementRepositoryProvider)));

final rejectedAdvertisementProvider =
    StateNotifierProvider<RejectedAdvertisementNotifier, AdvertisementState>(
        (ref) => RejectedAdvertisementNotifier(
            ref.watch(advertisementRepositoryProvider)));

final pendingAdvertisementProvider =
    StateNotifierProvider<PendingAdvertisementNotifier, AdvertisementState>(
        (ref) => PendingAdvertisementNotifier(
            ref.watch(advertisementRepositoryProvider)));

final productOrdersProvider =
    StateNotifierProvider<ProductOrdersNotifier, OrdersState>(
        (ref) => ProductOrdersNotifier(ref.watch(ordersRepositoryProvider)));

final adsOrdersProvider = StateNotifierProvider<AdsOrdersNotifier, OrdersState>(
    (ref) => AdsOrdersNotifier(ref.watch(ordersRepositoryProvider)));

final ordersProvider = StateNotifierProvider<OrdersNotifier, OrdersState>(
    (ref) => OrdersNotifier(ref.watch(ordersRepositoryProvider)));

final productStatusProvider =
    StateNotifierProvider<ProductStatusNotifier, ProductStatusState>(
        (ref) => ProductStatusNotifier(ref.watch(productRepositoryProvider)));

final userProvider = StateNotifierProvider<UserNotifier, UserState>(
    (ref) => UserNotifier(ref.watch(userRepositoryProvider)));

final normalUserProvider =
    StateNotifierProvider<NormalUsersNotifier, UserState>(
        (ref) => NormalUsersNotifier(ref.watch(userRepositoryProvider)));

final plusUserProvider = StateNotifierProvider<PlusUsersNotifier, UserState>(
    (ref) => PlusUsersNotifier(ref.watch(userRepositoryProvider)));

final deliveryPersonProvider = StateNotifierProvider<DeliveryPersonNotifier, DeliveryPersonState>(
    (ref) => DeliveryPersonNotifier(ref.watch(deliveryPersonRepositoryProvider)));

final reviewRejectProductProvider = StateNotifierProvider<RejectReviewsNotifier, ProductState>(
    (ref) => RejectReviewsNotifier(ref.watch(productRepositoryProvider)));

final transactionProvider =
    StateNotifierProvider<TransactionNotifier, TransactionState>(
        (ref) => TransactionNotifier(ref.watch(transactionRepositoryProvider)));
