import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/value_object.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_multiple_text_form_field.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/product/add_product/add_product_state.dart';
import '../../../shared/providers.dart';

class ProductUpdatePage extends ConsumerStatefulWidget {
  final Product product;
  const ProductUpdatePage({required this.product, super.key});

  @override
  _ProductUpdatePageState createState() => _ProductUpdatePageState();
}

class _ProductUpdatePageState extends ConsumerState<ProductUpdatePage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stockController = TextEditingController();
  final _priceController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _stockController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _nameController.text = widget.product.name.getOrCrash();
    _descriptionController.text = widget.product.description.getOrCrash();
    _stockController.text = widget.product.stock.getOrCrash().toString();
    _priceController.text = widget.product.price.getOrCrash().toString();
  }

  @override
  Widget build(BuildContext context) {
    final addProductNotifier = ref.read(addProductProvider.notifier);

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
          FlushbarHelper.createSuccess(message: 'Product updated successfully!')
              .show(context);
          _nameController.clear();
          _descriptionController.clear();
          _stockController.clear();
          _priceController.clear();
          ref.read(selectedImagesProvider.notifier).state = [];
          setState(() {});
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Update"),
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
                      _stockController.text.isNotEmpty &&
                      _priceController.text.isNotEmpty) {
                    final product = Product(
                      id: widget.product.id,
                      name: Name(_nameController.text),
                      description: Description(_descriptionController.text),
                      category: Category(widget.product.category.getOrCrash()),
                      brand: Brand(widget.product.brand.getOrCrash()),
                      model: Model(widget.product.model.getOrCrash()),
                      stock: Stock(int.parse(_stockController.text)),
                      price: Price(int.parse(_priceController.text)),
                      imageUrls: [],
                      conditionId: widget.product.conditionId,
                    );

                    addProductNotifier.updateProduct(product, _selectedImages);
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields and select images!',
                    ).show(context);
                  }
                },
                text: 'Update Product',
              ),
              const SizedBox(height: 10),
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
