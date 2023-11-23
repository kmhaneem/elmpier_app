import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';
import 'package:frontend/shared/providers.dart';

import '../../domain/user/user_address/model/district.dart';
import '../widget/custom_dropdown_button_form_field.dart';
import '../widget/custom_elevated_button.dart';

class UserProfileAddPage extends ConsumerStatefulWidget {
  final String? previousPage;
  final String? initialMessage;

  const UserProfileAddPage({Key? key, this.previousPage, this.initialMessage})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserProfileAddPageState();
}

class _UserProfileAddPageState extends ConsumerState<UserProfileAddPage> {
  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _addressLine1Controller = TextEditingController();
  var _addressLine2Controller = TextEditingController();
  var _postalCodeController = TextEditingController();
  var _cityController = TextEditingController();
  var _provinceController = TextEditingController();
  var _districtController = TextEditingController();

  Province? _selectedProvince;
  District? _selectedDistrict;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _addressLine1Controller.dispose();
    _addressLine2Controller.dispose();
    _postalCodeController.dispose();
    _cityController.dispose();
    _provinceController.dispose();
    _districtController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _addressLine1Controller = TextEditingController();
    _addressLine2Controller = TextEditingController();
    _postalCodeController = TextEditingController();
    _cityController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(provinceProvider.notifier).fetchProvinces();
      ref.read(districtProvider.notifier).fetchDistricts();
      if (widget.initialMessage != null) {
        FlushbarHelper.createInformation(
          message: widget.initialMessage!,
        ).show(context);
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final userState = ref.watch(userProfileXProvider);
    userState.maybeWhen(
        loaded: (user) {
          _firstNameController.text = user.firstName;
          _lastNameController.text = user.lastName;
          _addressLine1Controller.text = user.addressLine1;
          _addressLine2Controller.text = user.addressLine2;
          _postalCodeController.text = user.postalCode;
          _cityController.text = user.city;
        },
        orElse: () {});
  }

  @override
  Widget build(BuildContext context) {
    final userProfileNotifier = ref.watch(userProfileXProvider.notifier);
    final provinceState = ref.watch(provinceProvider);
    final districtState = ref.watch(districtProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 10),
              CustomTextFormField(
                labelText: "First Name",
                controller: _firstNameController,
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Last Name",
                controller: _lastNameController,
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Address Line 1",
                controller: _addressLine1Controller,
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: "Address Line 2",
                controller: _addressLine2Controller,
                obscureText: false,
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              CustomTextFormField(
                controller: _cityController,
                labelText: "City",
                obscureText: false,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                controller: _postalCodeController,
                labelText: "Postal Code",
                obscureText: false,
                maxLength: 5,
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                onPressed: () async {
                  if (_firstNameController.text.isNotEmpty &&
                      _lastNameController.text.isNotEmpty &&
                      _addressLine1Controller.text.isNotEmpty &&
                      _addressLine2Controller.text.isNotEmpty &&
                      _postalCodeController.text.isNotEmpty &&
                      _cityController.text.isNotEmpty &&
                      _provinceController.text.isNotEmpty &&
                      _districtController.text.isNotEmpty) {
                    final user = UserModel(
                      email: "",
                      phone: "",
                      firstName: _firstNameController.text,
                      lastName: _lastNameController.text,
                      addressLine1: _addressLine1Controller.text,
                      addressLine2: _addressLine2Controller.text,
                      city: _cityController.text,
                      postalCode: _postalCodeController.text,
                      districtId: int.parse(_districtController.text),
                      provinceId: int.parse(_provinceController.text),
                    );

                    await userProfileNotifier.updateUserDetails(user);

                    if (widget.previousPage == "CheckoutPage") {
                      AutoRouter.of(context).replace(CheckoutRoute());
                    } else if (widget.previousPage == "UserProfilePage") {
                      AutoRouter.of(context).replace(UserProfileRoute());
                    } else if (widget.previousPage == "WalletPage") {
                      AutoRouter.of(context).replace(WalletRoute());
                    } else {
                      AutoRouter.of(context).replace(UserProfileRoute());
                    }
                  } else {
                    FlushbarHelper.createError(
                      message: 'Please fill all fields!',
                    ).show(context);
                  }
                },
                text: 'Update User',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDisabledDistrictDropdown() {
  return CustomDropdownButtonFormField<District>(
    items: [],
    onChanged: null,
    labelText: 'District',
    hintText: 'Please select a province first',
  );
}
