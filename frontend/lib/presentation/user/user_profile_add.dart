import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

import '../../domain/user/user_address/model/district.dart';

class UserProfileAddPage extends ConsumerStatefulWidget {
  final String? previousPage;
  const UserProfileAddPage({this.previousPage, super.key});

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
    // _provinceController = TextEditingController();
    // _districtController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(provinceProvider.notifier).fetchProvinces();
      ref.read(districtProvider.notifier).fetchDistricts();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final userState = ref.watch(userProvider);
    userState.maybeWhen(
        loaded: (user) {
          _firstNameController.text = user.firstName;
          _lastNameController.text = user.lastName;
          _addressLine1Controller.text = user.addressLine1;
          _addressLine2Controller.text = user.addressLine2;
          _postalCodeController.text = user.postalCode.toString();
          _cityController.text = user.city;
          // _provinceController.text = user.province;
          // _districtController.text = user.district;
        },
        orElse:
            () {} 
        );
  }

  @override
  Widget build(BuildContext context) {
    final userProfileNotifier = ref.watch(userProfileProvider.notifier);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(height: 1),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: 1),
              TextFormField(
                controller: _addressLine1Controller,
                decoration: const InputDecoration(
                  labelText: 'Address Line 1',
                ),
              ),
              const SizedBox(height: 1),
              TextFormField(
                controller: _addressLine2Controller,
                decoration: const InputDecoration(
                  labelText: 'Address Line 2',
                ),
              ),
              const SizedBox(height: 1),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final provinceState = ref.watch(provinceProvider);
                  return provinceState.when(
                    initial: () => Text('Select a province.'),
                    loadInProgress: () => CircularProgressIndicator(),
                    loadSuccess: (provinces) {
                      return DropdownButtonFormField<Province>(
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
                          _provinceController.text = newValue!.name;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Province',
                        ),
                      );
                    },
                    loadFailure: (err) {
                      print('Error Detail: $err');
                      return Text('Error loading province');
                    },
                  );
                },
              ),
              Consumer(builder:
                  (BuildContext context, WidgetRef ref, Widget? child) {
                final brandState = ref.watch(districtProvider);
                return brandState.when(
                  initial: () => _buildDisabledDistrictDropdown(),
                  loadInProgress: () => CircularProgressIndicator(),
                  loadSuccess: (districts) {
                    if (_selectedProvince == null) {
                      return _buildDisabledDistrictDropdown();
                    }
                    final filteredDistricts = districts
                        .where((district) =>
                            district.provinceId == _selectedProvince!.id)
                        .toList();
                    return DropdownButtonFormField<District>(
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
                        _districtController.text = newValue!.name;
                      },
                      decoration: const InputDecoration(
                        labelText: 'District',
                      ),
                    );
                  },
                  loadFailure: (err) {
                    print('Error Detail: $err');
                    return Text('Error loading district');
                  },
                );
              }),
              const SizedBox(height: 1),
              TextFormField(
                controller: _cityController,
                decoration: const InputDecoration(
                  labelText: 'City',
                ),
              ),
              TextFormField(
                controller: _postalCodeController,
                decoration: const InputDecoration(
                  labelText: 'Postal Code',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
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
                      postalCode: int.parse(_postalCodeController.text),
                      district: _districtController.text,
                      province: _provinceController.text,
                    );

                    await userProfileNotifier.updateUserDetails(user);

                    final userNotifier =
                        ref.read(userNotifierProvider.notifier);
                    await userNotifier.fetchUserDetails();

                    if (widget.previousPage == "CheckoutPage") {
                      AutoRouter.of(context).replace(CheckoutRoute());
                    } else if (widget.previousPage == "UserProfilePage") {
                      AutoRouter.of(context).replace(UserProfileRoute());
                    } else {
                      AutoRouter.of(context).replace(UserProfileRoute());
                    }

                  } else {
                    // Using Flushbar:
                    FlushbarHelper.createError(
                      message: 'Please fill all fields!',
                    ).show(context);
                  }
                },
                child: Text('Update User'),
              ),

              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final userProfileState = ref.watch(userProfileProvider);

                  return userProfileState.maybeMap(
                    actionInProgress: (_) =>
                        const LinearProgressIndicator(value: null),
                    actionFailure: (_) =>
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

Widget _buildDisabledDistrictDropdown() {
  return DropdownButtonFormField<District>(
    items: [],
    onChanged: null, 
    decoration: const InputDecoration(
      labelText: 'District',
      hintText: 'Please select a province first',
    ),
  );
}
