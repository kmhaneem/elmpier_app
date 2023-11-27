import 'package:delivery/application/auth/auth_notifier.dart';
import 'package:delivery/application/auth/auth_state.dart';
import 'package:delivery/application/auth/sign_in/sign_in_notifier.dart';
import 'package:delivery/application/auth/sign_in/sign_in_state.dart';
import 'package:delivery/application/delivery_item/delivery_item_notifier.dart';
import 'package:delivery/application/delivery_item/delivery_item_state.dart';
import 'package:delivery/application/oder_item/order_item_notifier.dart';
import 'package:delivery/application/oder_item/order_item_state.dart';
import 'package:delivery/application/oder_item/picked_items/picked_items_notifier.dart';
import 'package:delivery/application/oder_item/rejected_items/rejected_items_notifier.dart';
import 'package:delivery/application/product/product_notifier.dart';
import 'package:delivery/application/product/product_state.dart';
import 'package:delivery/application/profile/user_profile_notifier.dart';
import 'package:delivery/application/profile/user_profile_state.dart';
import 'package:delivery/infrastructure/auth/auth_repository.dart';
import 'package:delivery/infrastructure/order_item/order_item_repository.dart';
import 'package:delivery/infrastructure/product/product_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemsRepositoryProvider = Provider(((ref) => OrderItemRepository(Dio())));

final productRepositoryProvider = Provider(((ref) => ProductRepository(Dio())));

final authRepositoryProvider = Provider(((ref) => AuthRepository(Dio())));

final orderItemProvider =
    StateNotifierProvider<OrderItemNotifier, OrderItemState>(
        ((ref) => OrderItemNotifier(ref.watch(itemsRepositoryProvider))));

final pickedItemProvider =
    StateNotifierProvider<PickedItemsNotifier, OrderItemState>(
        ((ref) => PickedItemsNotifier(ref.watch(itemsRepositoryProvider))));

final rejectedItemProvider =
    StateNotifierProvider<RejectedItemsNotifier, OrderItemState>(
        ((ref) => RejectedItemsNotifier(ref.watch(itemsRepositoryProvider))));

final deliveryItemProvider =
    StateNotifierProvider<DeliveryItemNotifier, DeliveryItemState>(
        ((ref) => DeliveryItemNotifier(ref.watch(itemsRepositoryProvider))));

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
    ((ref) => ProductNotifier(ref.watch(productRepositoryProvider))));

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
    ((ref) => SignInNotifier(ref.watch(authRepositoryProvider))));

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    ((ref) => AuthNotifier(ref.watch(authRepositoryProvider))));

final userProfileProvider =
    StateNotifierProvider<UserProfileNotifier, UserProfileState>(
        ((ref) => UserProfileNotifier(ref.watch(authRepositoryProvider))));
