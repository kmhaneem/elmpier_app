import 'package:dashboard/application/auth/auth_notifier.dart';
import 'package:dashboard/application/auth/auth_state.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_notifier.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_state.dart';
import 'package:dashboard/application/product/product_notifier.dart';
import 'package:dashboard/application/product/product_state.dart';
import 'package:dashboard/application/transaction/transaction_notifier.dart';
import 'package:dashboard/application/transaction/transaction_state.dart';
import 'package:dashboard/application/users/users_notifier.dart';
import 'package:dashboard/application/users/users_state.dart';
import 'package:dashboard/infrastructure/auth/auth_repository.dart';
import 'package:dashboard/infrastructure/product/product_repository.dart';
import 'package:dashboard/infrastructure/transaction/transcation_repository.dart';
import 'package:dashboard/infrastructure/user/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/product/review/product_status_notifier.dart';
import '../application/product/review/product_status_state.dart';

final authRepositoryProvider = Provider(((ref) => AuthRepository(Dio())));
final productRepositoryProvider = Provider(((ref) => ProductRepository(Dio())));
final userRepositoryProvider = Provider(((ref) => UserRepository(Dio())));
final transactionRepositoryProvider = Provider(((ref) => TransactionRepository(Dio())));

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
    ((ref) => SignInNotifier(ref.watch(authRepositoryProvider))));

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
    (ref) => ProductNotifier(ref.watch(productRepositoryProvider)));

final productStatusProvider = StateNotifierProvider<ProductStatusNotifier, ProductStatusState>(
    (ref) => ProductStatusNotifier(ref.watch(productRepositoryProvider)));

final userProvider = StateNotifierProvider<UserNotifier, UserState>(
    (ref) => UserNotifier(ref.watch(userRepositoryProvider)));

final transactionProvider = StateNotifierProvider<TransactionNotifier, TransactionState>(
    (ref) => TransactionNotifier(ref.watch(transactionRepositoryProvider)));
