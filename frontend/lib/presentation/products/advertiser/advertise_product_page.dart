import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/add_advertisement/add_advertisement_state.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/category.dart';
import 'package:frontend/domain/product/model/model.dart';
import 'package:frontend/domain/user/user_address/model/district.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
import 'package:frontend/presentation/widget/custom_dropdown_button_form_field.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_multiple_text_form_field.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';
import 'package:frontend/shared/providers.dart';
import 'package:image_picker/image_picker.dart';

class AdvertiseProductPage extends ConsumerStatefulWidget {
  const AdvertiseProductPage({super.key});

  @override
  _AdvertiseProductPageState createState() => _AdvertiseProductPageState();
}

class _AdvertiseProductPageState extends ConsumerState<AdvertiseProductPage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _categoryController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();
  final _stockController = TextEditingController();
  final _priceController = TextEditingController();
  final _conditionController = TextEditingController();
  final _provinceController = TextEditingController();
  final _districtController = TextEditingController();
  final _advertisementConditionController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  ProductCategory? _selectedCategory;
  ProductBrand? _selectedBrand;
  ProductModel? _selectedModel;
  Province? _selectedProvince;
  District? _selectedDistrict;
  AdvertisementCondition? _advertisementCondition;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _categoryController.dispose();
    _brandController.dispose();
    _modelController.dispose();
    _stockController.dispose();
    _priceController.dispose();
    _provinceController.dispose();
    _districtController.dispose();
    _advertisementConditionController.dispose();
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
    final addAdvertisementNotifier =
        ref.read(addAdvertisementProvider.notifier);
    final addProductState = ref.read(addProductProvider);
    final productState = ref.watch(addProductProvider);
    final categoryState = ref.watch(categoryProvider);
    final modelState = ref.watch(modelProvider);
    final brandState = ref.watch(brandProvider);
    final provinceState = ref.watch(provinceProvider);
    final districtState = ref.watch(districtProvider);
    final advertisementConditionState =
        ref.watch(advertisementConditionProvider);

    final selectedImagesController = ref.watch(selectedImagesProvider.notifier);
    var _selectedImages = ref.watch(selectedImagesProvider);

    ref.listen<AddAdvertisementState>(addAdvertisementProvider,
        (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        actionInProgress: () {},
        actionFailure: (failure) {
          FlushbarHelper.createError(
            message: failure.maybeMap(
              serverError: (value) => "SERVER ERROR",
              orElse: () => "",
            ),
          ).show(context);
        },
        createSuccess: () {
          FlushbarHelper.createSuccess(
                  message: 'Advertisement created successfully!')
              .show(context);
          _nameController.clear();
          _descriptionController.clear();
          _categoryController.clear();
          _brandController.clear();
          _modelController.clear();
          _stockController.clear();
          _priceController.clear();
          _advertisementConditionController.clear();
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
        title: Text("Advertise"),
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
                labelText: "Advertise Name",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              CustomMultipleTextFormField(
                controller: _descriptionController,
                labelText: "Advertise Description",
              ),
              const SizedBox(height: 10),
              provinceState.maybeWhen(
                initial: () => Text('Select a province.'),
                loadSuccess: (provinces) {
                  return CustomDropdownButtonFormField<Province>(
                    value: _selectedProvince,
                    items: provinces.map((Province province) {
                      return DropdownMenuItem<Province>(
                        value: province,
                        child: Text(province.name),
                      );
                    }).toList(),
                    onChanged: (Province? newValue) {
                      setState(() {
                        _selectedDistrict = null;
                        _selectedProvince = newValue;
                      });
                      _provinceController.text = newValue!.id.toString();
                    },
                    labelText: 'Province',
                  );
                },
                orElse: () => Text(""),
              ),
              const SizedBox(height: 10),
              districtState.maybeWhen(
                initial: () => _buildDisabledDistrictDropdown(),
                loadSuccess: (districts) {
                  if (_selectedProvince == null) {
                    return _buildDisabledDistrictDropdown();
                  }
                  final filteredDistricts = districts
                      .where((district) =>
                          district.provinceId == _selectedProvince!.id)
                      .toList();
                  return CustomDropdownButtonFormField<District>(
                    value: _selectedDistrict,
                    items: filteredDistricts.map((District district) {
                      return DropdownMenuItem<District>(
                        value: district,
                        child: Text(district.name),
                      );
                    }).toList(),
                    onChanged: (District? newValue) {
                      setState(() {
                        _selectedDistrict = newValue;
                      });
                      _districtController.text = newValue!.id.toString();
                    },
                    labelText: 'District',
                  );
                },
                orElse: () => Text(""),
              ),
              const SizedBox(height: 10),
              advertisementConditionState.maybeWhen(
                initial: () => const Text('Select a condition.'),
                loadSuccess: (adConditions) {
                  return CustomDropdownButtonFormField<AdvertisementCondition>(
                    value: _advertisementCondition,
                    items: adConditions
                        .map((AdvertisementCondition advertisementCondition) {
                      return DropdownMenuItem<AdvertisementCondition>(
                        value: advertisementCondition,
                        child: Text(advertisementCondition.name),
                      );
                    }).toList(),
                    onChanged: (AdvertisementCondition? newValue) {
                      setState(() {
                        _advertisementCondition = newValue;
                      });
                      _advertisementConditionController.text =
                          newValue!.id.toString();
                    },
                    labelText: "Condition",
                  );
                },
                orElse: () => CircularProgressIndicator(),
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
                    labelText: "Category",
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
                    labelText: "Brand",
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
                    labelText: "Model",
                  );
                },
                orElse: () => CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: _priceController,
                labelText: "Price",
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
                      _priceController.text.isNotEmpty) {
                    final advertisement = Advertisement(
                      name: _nameController.text,
                      description: _descriptionController.text,
                      price: int.parse(_priceController.text),
                      conditionId:
                          int.parse(_advertisementConditionController.text),
                      categoryId: int.parse(_categoryController.text),
                      brandId: int.parse(_brandController.text),
                      modelId: int.parse(_modelController.text),
                      provinceId: int.parse(_provinceController.text),
                      districtId: int.parse(_districtController.text),
                      imageUrls: [],
                      id: 0,
                    );
                    print("ADV DATA $advertisement");

                    addAdvertisementNotifier.createAdvertisement(
                      advertisement,
                      _selectedImages,
                    );
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields and select images!',
                    ).show(context);
                  }
                },
                text: 'Advertise',
              ),
              const SizedBox(height: 10),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final addAdvertiseState = ref.watch(addAdvertisementProvider);

                  return addAdvertiseState.maybeMap(
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
    labelText: 'Brand',
    hintText: 'Please select a category first',
  );
}

Widget _buildDisabledModelDropdown() {
  return CustomDropdownButtonFormField<ProductModel>(
    items: [],
    onChanged: null,
    labelText: 'Model',
    hintText: 'Please select a brand first',
  );
}

Widget _buildDisabledDistrictDropdown() {
  return CustomDropdownButtonFormField<District>(
    items: [],
    onChanged: null,
    labelText: 'District',
    hintText: 'Please select a province first',
  );
}
