import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/add_product/add_product_notifier.dart';
import 'package:frontend/application/product/add_product/add_product_state.dart';
import 'package:frontend/application/product/brand/brand_notifier.dart';
import 'package:frontend/application/product/brand/brand_state.dart';
import 'package:frontend/application/product/category/category_state.dart';
import 'package:frontend/application/product/product_model/model_notifier.dart';
import 'package:frontend/application/product/product_model/model_state.dart';
import 'package:frontend/application/product/search/search_notifier.dart';
import 'package:frontend/application/product/search/search_state.dart';
import 'package:frontend/application/product/view_product/product_notifier.dart';
import 'package:frontend/application/product/view_product/product_state.dart';
import 'package:frontend/infrastructure/auth/auth_repository.dart';
import 'package:frontend/infrastructure/product/product_repository.dart';
import 'package:image_picker/image_picker.dart';

import '../application/auth/auth_notifier.dart';
import '../application/auth/auth_state.dart';
import '../application/auth/sign_in/sign_in_notifer.dart';
import '../application/auth/sign_in/sign_in_state.dart';
import '../application/product/category/category_notifier.dart';
import '../presentation/routes/app_router.gr.dart';
import '../presentation/routes/auth_guard.dart';

final authRepositoryProvider = Provider(((ref) => AuthRepository(Dio())));

final productRepositoryProvider =
    Provider<ProductRepository>(((ref) => ProductRepository(Dio())));

final productProvider = StateNotifierProvider<ProductNotifier, ProductState>(
    ((ref) => ProductNotifier(ref.watch(productRepositoryProvider))));

final addProductProvider =
    StateNotifierProvider<AddProductNotifier, AddProductState>(
        ((ref) => AddProductNotifier(ref.watch(productRepositoryProvider))));

final selectedImagesProvider = StateProvider<List<XFile>>((ref) => []);

final categoryProvider = StateNotifierProvider<CategoryNotifier, CategoryState>(
    (ref) => CategoryNotifier(ref.watch(productRepositoryProvider)));

final brandProvider = StateNotifierProvider<BrandNotifier, BrandState>(
    (ref) => BrandNotifier(ref.watch(productRepositoryProvider)));

final modelProvider = StateNotifierProvider<ModelNotifier, ModelState>(
    (ref) => ModelNotifier(ref.watch(productRepositoryProvider)));

final productSearchProvider =
    StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(ref.watch(productRepositoryProvider)),
);

final signInProvider =
    StateNotifierProvider<SignInNotifier, SignInState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInNotifier(authRepository);
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authFacade = ref.watch(authRepositoryProvider);
  return AuthNotifier(authFacade);
});

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());
final attemptedToAddProductProvider = StateProvider<bool>((ref) => false);

