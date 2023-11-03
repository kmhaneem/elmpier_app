import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/value_object.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/product/add_product/add_product_state.dart';
import '../../../domain/product/model/category.dart';
import '../../../domain/product/model/model.dart';
import '../../../shared/providers.dart';

class SellProductPage extends ConsumerStatefulWidget {
  const SellProductPage({super.key});

  @override
  _SellProductPageState createState() => _SellProductPageState();
}

class _SellProductPageState extends ConsumerState<SellProductPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();
  final _stockController = TextEditingController();
  final _priceController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  ProductCategory? _selectedCategory;
  ProductBrand? _selectedBrand;
  ProductModel? _selectedModel;

  @override
  void dispose() {
    // _userIdController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _stockController.dispose();
    _priceController.dispose();
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
    final addProductNotifier = ref.read(addProductProvider.notifier);
    final addProductState = ref.read(addProductProvider);

    final selectedImagesController = ref.watch(selectedImagesProvider.notifier);
    var _selectedImages = ref.watch(selectedImagesProvider);

    ref.listen<AddProductState>(addProductProvider, (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        actionInProgress: () {},
        actionFailure: (failure) {
          FlushbarHelper.createError(
            message: failure.toString(),
          ).show(context);
        },
        createSuccess: () {
          FlushbarHelper.createSuccess(message: 'Product created successfully!')
              .show(context);
          _nameController.clear();
          _descriptionController.clear();
          _categoryController.clear();
          _brandController.clear();
          _modelController.clear();
          _stockController.clear();
          _priceController.clear();
          ref.read(selectedImagesProvider.notifier).state = [];
          setState(() {
            _selectedCategory = null;
          });
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(title: Text("Sell Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 1),
              const SizedBox(height: 1),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Product Name',
                ),
              ),
              const SizedBox(height: 1),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Product Description',
                ),
              ),
              const SizedBox(height: 1),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final categoryState = ref.watch(categoryProvider);
                  return categoryState.when(
                    initial: () => Text('Select a category.'),
                    loadInProgress: () => CircularProgressIndicator(),
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
                    loadFailure: (err) {
                      print('Error Detail: $err');
                      return Text('Error loading categories');
                    },
                  );
                },
              ),
              Consumer(builder:
                  (BuildContext context, WidgetRef ref, Widget? child) {
                final brandState = ref.watch(brandProvider);
                return brandState.when(
                  initial: () => _buildDisabledBrandDropdown(),
                  loadInProgress: () => CircularProgressIndicator(),
                  loadSuccess: (brands) {
                    if (_selectedCategory == null) {
                      return _buildDisabledBrandDropdown();
                    }
                    final filteredBrands = brands
                        .where((brand) =>
                            brand.categoryId == _selectedCategory!.id)
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
                  loadFailure: (err) {
                    print('Error Detail: $err');
                    return Text('Error loading brands');
                  },
                );
              }),

              Consumer(builder:
                  (BuildContext context, WidgetRef ref, Widget? child) {
                final modelState = ref.watch(modelProvider);
                return modelState.when(
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
                );
              }),
              const SizedBox(height: 1),
              TextFormField(
                controller: _stockController,
                decoration: const InputDecoration(
                  labelText: 'Product Stock',
                ),
              ),
              const SizedBox(height: 1),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                  labelText: 'Product Price',
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${ref.watch(selectedImagesProvider.notifier).state.length} images selected',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final pickedFiles = await _picker.pickMultiImage();
                  if (pickedFiles != null && pickedFiles is List<XFile>) {
                    selectedImagesController.state = pickedFiles;

                    print(
                        "Updated _selectedImages Count: ${ref.read(selectedImagesProvider.notifier).state.length}");
                  }
                },
                child: Text('Select Product Images'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (
                      _nameController.text.isNotEmpty &&
                      _descriptionController.text.isNotEmpty &&
                      _categoryController.text.isNotEmpty &&
                      _brandController.text.isNotEmpty &&
                      _modelController.text.isNotEmpty &&
                      _stockController.text.isNotEmpty &&
                      _priceController.text.isNotEmpty) {
                    final product = Product(
                      // id: UniqueId(),
                      id: 0,
                      name: Name(_nameController.text),
                      description: Description(_descriptionController.text),
                      category: Category(int.parse(_categoryController.text)),
                      brand: Brand(int.parse(_brandController.text)),
                      model: Model(int.parse(_modelController.text)),
                      stock: Stock(int.parse(_stockController.text)),
                      price: Price(int.parse(_priceController.text)),
                      imageUrls: [],
                    );

                    addProductNotifier.createProduct(product, _selectedImages);
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields and select images!',
                    ).show(context);
                  }
                },
                child: Text('Create Product'),
              ),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final addProductState = ref.watch(addProductProvider);

                  return addProductState.maybeMap(
                    actionInProgress: (_) =>
                        const LinearProgressIndicator(value: null),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              )
            ],
          ),
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
