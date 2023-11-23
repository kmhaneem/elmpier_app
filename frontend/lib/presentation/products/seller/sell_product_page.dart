import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/model/product_condition.dart';
import 'package:frontend/domain/product/value_object.dart';
import 'package:frontend/presentation/widget/custom_dropdown_button_form_field.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_multiple_text_form_field.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';
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
  final _conditionController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  ProductCategory? _selectedCategory;
  ProductBrand? _selectedBrand;
  ProductModel? _selectedModel;
  AdvertisementCondition? _condition;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _stockController.dispose();
    _priceController.dispose();
    _conditionController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(categoryProvider.notifier).fetchCategories();
      ref.read(brandProvider.notifier).fetchBrands();
      ref.read(modelProvider.notifier).fetchModels();
      ref.read(provinceProvider.notifier).fetchProvinces();
      ref.read(districtProvider.notifier).fetchDistricts();
      ref
          .read(advertisementConditionProvider.notifier)
          .getAllAdvertisementConditions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final addProductNotifier = ref.read(addProductProvider.notifier);
    final addProductState = ref.read(addProductProvider);
    final productState = ref.watch(addProductProvider);
    final categoryState = ref.watch(categoryProvider);
    final modelState = ref.watch(modelProvider);
    final brandState = ref.watch(brandProvider);
    final conditionState = ref.watch(advertisementConditionProvider);

    final selectedImagesController = ref.watch(selectedImagesProvider.notifier);
    var _selectedImages = ref.watch(selectedImagesProvider);

    ref.listen<AddProductState>(addProductProvider, (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        actionInProgress: () {},
        actionFailure: (failure) {
          FlushbarHelper.createError(
            message: failure.maybeMap(
              exceededLimit: (value) =>
                  "YOU HAVE REACED THE PRODUCT CREATION LIMIT. TO CREATE UNLIMITED, UPGRATE ELMPIER PLUS",
              serverError: (value) => "SERVER ERROR",
              orElse: () => "",
            ),
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
          _conditionController.clear();
          ref.read(selectedImagesProvider.notifier).state = [];
          setState(() {
            _selectedCategory = null;
          });
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Sell Product"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 1),
              const SizedBox(height: 1),
              CustomTextFormField(
                controller: _nameController,
                labelText: "Product Name",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              CustomMultipleTextFormField(
                controller: _descriptionController,
                labelText: "Product Description",
              ),
              const SizedBox(height: 10),
              categoryState.maybeWhen(
                initial: () => const Text('Select a category.'),
                loadSuccess: (categories) {
                  return CustomDropdownButtonFormField<ProductCategory>(
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
                    labelText: "Product Category",
                  );
                },
                orElse: () => CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
              brandState.maybeWhen(
                loadSuccess: (brands) {
                  if (_selectedCategory == null) {
                    return _buildDisabledBrandDropdown();
                  }
                  final filteredBrands = brands
                      .where(
                          (brand) => brand.categoryId == _selectedCategory!.id)
                      .toList();
                  return CustomDropdownButtonFormField<ProductBrand>(
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
                    labelText: "Product Brand",
                  );
                },
                orElse: () => CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
              modelState.maybeWhen(
                initial: () => _buildDisabledModelDropdown(),
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
                  return CustomDropdownButtonFormField<ProductModel>(
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
                    labelText: "Product Model",
                  );
                },
                orElse: () => CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
              conditionState.maybeWhen(
                initial: () => const Text('Select a condition.'),
                loadSuccess: (adConditions) {
                  return CustomDropdownButtonFormField<AdvertisementCondition>(
                    value: _condition,
                    items: adConditions
                        .map((AdvertisementCondition advertisementCondition) {
                      return DropdownMenuItem<AdvertisementCondition>(
                        value: advertisementCondition,
                        child: Text(advertisementCondition.name),
                      );
                    }).toList(),
                    onChanged: (AdvertisementCondition? newValue) {
                      setState(() {
                        _condition = newValue;
                      });
                      _conditionController.text = newValue!.id.toString();
                    },
                    labelText: "Condition",
                  );
                },
                orElse: () => CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: _stockController,
                labelText: "Product Stock",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: _priceController,
                labelText: "Product Price",
                obscureText: false,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomElevatedButton(
                    onPressed: () async {
                      final pickedFiles = await _picker.pickMultiImage();
                      if (pickedFiles != null && pickedFiles is List<XFile>) {
                        selectedImagesController.state = pickedFiles;

                        print(
                            "Updated _selectedImages Count: ${ref.read(selectedImagesProvider.notifier).state.length}");
                      }
                    },
                    text: 'Select',
                    fixedSize: Size(double.infinity, 30),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${ref.watch(selectedImagesProvider.notifier).state.length} images selected',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomElevatedButton(
                onPressed: () {
                  if (_nameController.text.isNotEmpty &&
                      _descriptionController.text.isNotEmpty &&
                      _categoryController.text.isNotEmpty &&
                      _brandController.text.isNotEmpty &&
                      _modelController.text.isNotEmpty &&
                      _stockController.text.isNotEmpty &&
                      _priceController.text.isNotEmpty) {
                    final product = Product(
                      id: 0,
                      name: Name(_nameController.text),
                      description: Description(_descriptionController.text),
                      category: Category(int.parse(_categoryController.text)),
                      brand: Brand(int.parse(_brandController.text)),
                      model: Model(int.parse(_modelController.text)),
                      stock: Stock(int.parse(_stockController.text)),
                      price: Price(int.parse(_priceController.text)),
                      imageUrls: [],
                      conditionId: int.parse(_conditionController.text),
                    );

                    addProductNotifier.createProduct(product, _selectedImages);
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields and select images!',
                    ).show(context);
                  }
                },
                text: 'Create Product',
              ),
              SizedBox(height: 10,),
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
  return CustomDropdownButtonFormField<ProductBrand>(
    items: [],
    onChanged: null,
    labelText: 'Product Brand',
    hintText: 'Please select a category first',
  );
}

Widget _buildDisabledModelDropdown() {
  return CustomDropdownButtonFormField<ProductModel>(
    items: [],
    onChanged: null,
    labelText: 'Product Model',
    hintText: 'Please select a brand first',
  );
}
