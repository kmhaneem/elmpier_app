import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/user/address/province/province_state.dart';
import 'package:frontend/domain/user/i_user_repository.dart';

class ProvinceNotifier extends StateNotifier<ProvinceState> {
  final IUserRepository _iUserRepository;
  ProvinceNotifier(this._iUserRepository)
      : super(const ProvinceState.initial());

  Future<void> fetchProvinces() async {
    state = const ProvinceState.loadInProgress();
    final failureOrProvice = await _iUserRepository.getProvince();
    failureOrProvice.fold(
      (failure) {
        print("Province Error: $failure");
        state = ProvinceState.loadFailure(failure); 
      },
      (province) => state = ProvinceState.loadSuccess(province), 
    );
  }
}

