import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/product/add_product/add_product_notifier.dart';
import 'package:frontend/application/product/add_product/add_product_state.dart';
import 'package:frontend/application/product/category/category_state.dart';
import 'package:frontend/application/product/view_product/product_notifier.dart';
import 'package:frontend/application/product/view_product/product_state.dart';
import 'package:frontend/infrastructure/product/product_repository.dart';
import 'package:image_picker/image_picker.dart';

import '../application/product/category/category_notifier.dart';

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
