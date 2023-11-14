import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/product/model/brand.dart';
import '../../../domain/product/model/category.dart';
import '../../../domain/product/model/model.dart';
import '../../../shared/providers.dart';

class ProductFilterPage extends ConsumerStatefulWidget {
  const ProductFilterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductFilterPageState();
}

class _ProductFilterPageState extends ConsumerState<ProductFilterPage> {
  final _categoryController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();

  ProductCategory? _selectedCategory;
  ProductBrand? _selectedBrand;
  ProductModel? _selectedModel;

  @override
  void dispose() {
    _brandController.dispose();
    _modelController.dispose();
    _categoryController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(categoryProvider.notifier).fetchCategories();
      ref.read(brandProvider.notifier).fetchBrands();
      ref.read(modelProvider.notifier).fetchModels();
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoryState = ref.watch(categoryProvider);
    final brandState = ref.watch(brandProvider);
    final modelState = ref.watch(modelProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            categoryState.maybeWhen(
              initial: () => Text('Select a category.'),
              loadSuccess: (categories) {
                return DropdownButtonFormField<ProductCategory>(
                  value: _selectedCategory,
                  items: categories.map((ProductCategory category) {
                    return DropdownMenuItem<ProductCategory>(
                      value: category,
                      child: Text(category.name),
                    );
                  }).toList(),
                  onChanged: (ProductCategory? newValue) {
                    setState(() {
                      _selectedBrand = null;
                      _selectedCategory = newValue;
                    });
                    _categoryController.text = newValue!.id.toString();
                  },
                  decoration: const InputDecoration(
                    labelText: 'Product Category',
                  ),
                );
              },
              orElse: () => Text("OR ELSE"),
            ),
            brandState.maybeWhen(
              loadSuccess: (brands) {
                if (_selectedCategory == null) {
                  return _buildDisabledBrandDropdown();
                }
                final filteredBrands = brands
                    .where((brand) => brand.categoryId == _selectedCategory!.id)
                    .toList();
                return DropdownButtonFormField<ProductBrand>(
                  value: _selectedBrand,
                  items: filteredBrands.map((ProductBrand brand) {
                    return DropdownMenuItem<ProductBrand>(
                      value: brand,
                      child: Text(brand.name),
                    );
                  }).toList(),
                  onChanged: (ProductBrand? newValue) {
                    setState(() {
                      _selectedBrand = newValue;
                    });
                    _brandController.text = newValue!.id.toString();
                  },
                  decoration: const InputDecoration(
                    labelText: 'Product Brand',
                  ),
                );
              },
              orElse: () => CircularProgressIndicator(),
            ),
            modelState.when(
              initial: () => _buildDisabledModelDropdown(),
              loadInProgress: () => CircularProgressIndicator(),
              loadSuccess: (models) {
                if (_selectedCategory == null) {
                  return _buildDisabledBrandDropdown();
                }
                if (_selectedBrand == null) {
                  return _buildDisabledModelDropdown();
                }
                final filteredModels = models
                    .where((model) => model.brandId == _selectedBrand!.id)
                    .toList();
                return DropdownButtonFormField<ProductModel>(
                  value: _selectedModel,
                  items: filteredModels.map((ProductModel model) {
                    return DropdownMenuItem<ProductModel>(
                      value: model,
                      child: Text(model.name),
                    );
                  }).toList(),
                  onChanged: (ProductModel? newValue) {
                    setState(() {
                      _selectedModel = newValue;
                    });
                    _modelController.text = newValue!.id.toString();
                  },
                  decoration: const InputDecoration(
                    labelText: 'Product Model',
                  ),
                );
              },
              loadFailure: (err) {
                print('Error Detail: $err');
                return Text('Error loading models');
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDisabledBrandDropdown() {
  return DropdownButtonFormField<ProductBrand>(
    items: [],
    onChanged: null,
    decoration: const InputDecoration(
      labelText: 'Product Brand',
      hintText: 'Please select a category first',
    ),
  );
}

Widget _buildDisabledModelDropdown() {
  return DropdownButtonFormField<ProductModel>(
    items: [],
    onChanged: null,
    decoration: const InputDecoration(
      labelText: 'Product Model',
      hintText: 'Please select a brand first',
    ),
  );
}
