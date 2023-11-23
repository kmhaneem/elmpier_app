import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/add_advertisement/add_advertisement_state.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_multiple_text_form_field.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';
import 'package:frontend/shared/providers.dart';
import 'package:image_picker/image_picker.dart';

class AdvertisementUpdatePage extends ConsumerStatefulWidget {
  final Advertisement advertisement;
  const AdvertisementUpdatePage({required this.advertisement, super.key});

  @override
  _AdvertisementUpdatePageState createState() =>
      _AdvertisementUpdatePageState();
}

class _AdvertisementUpdatePageState
    extends ConsumerState<AdvertisementUpdatePage> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
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

    _nameController.text = widget.advertisement.name;
    _descriptionController.text = widget.advertisement.description;
    _priceController.text = widget.advertisement.price.toString();
  }

  @override
  Widget build(BuildContext context) {
    final addProductNotifier = ref.read(addProductProvider.notifier);
    final addAdvertisementNotifier =
        ref.read(addAdvertisementProvider.notifier);
    final addProductState = ref.read(addProductProvider);
    final productState = ref.watch(addProductProvider);

    final selectedImagesController = ref.watch(selectedImagesProvider.notifier);
    var _selectedImages = ref.watch(selectedImagesProvider);

    ref.listen<AddAdvertisementState>(addAdvertisementProvider,
        (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        actionInProgress: () {},
        actionFailure: (failure) {
          String errorMessage = failure.maybeMap(
            serverError: (value) => "SERVER ERROR",
            orElse: () => "An unknown error occurred",
          );
          if (errorMessage.isEmpty) {
            errorMessage = "An unknown error occurred";
          }
          FlushbarHelper.createError(
            message: errorMessage,
          ).show(context);
        },
        updateSuccess: () {
          FlushbarHelper.createSuccess(
                  message: 'Advertisement updated successfully!')
              .show(context);
          _nameController.clear();
          _descriptionController.clear();
          _priceController.clear();
          ref.read(selectedImagesProvider.notifier).state = [];
          setState(() {});
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
                      _priceController.text.isNotEmpty) {
                    final advertisement = Advertisement(
                      id: widget.advertisement.id,
                      name: _nameController.text,
                      description: _descriptionController.text,
                      price: int.parse(_priceController.text),
                      conditionId: widget.advertisement.conditionId,
                      categoryId: widget.advertisement.categoryId,
                      brandId: widget.advertisement.brandId,
                      modelId: widget.advertisement.modelId,
                      provinceId: widget.advertisement.provinceId,
                      districtId: widget.advertisement.districtId,
                      imageUrls: [],
                    );
                    print("ADV DATA $advertisement");

                    addAdvertisementNotifier.updateAdvertisement(
                      advertisement,
                      _selectedImages,
                    );
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields and select images!',
                    ).show(context);
                  }
                },
                text: 'Update Advertisement',
              ),
              const SizedBox(height: 20),
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
