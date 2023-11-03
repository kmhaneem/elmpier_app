import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/user/address/district/district_state.dart';
import 'package:frontend/domain/user/i_user_repository.dart';

import '../../../../domain/user/user_address/model/province.dart';

class DistrictNotifier extends StateNotifier<DistrictState> {
  final IUserRepository _iUserRepository;
  DistrictNotifier(this._iUserRepository)
      : super(const DistrictState.initial());

  Future<void> fetchDistricts() async {
    state = const DistrictState.initial();
    final failureOrProvice = await _iUserRepository.getDistrict();
    state = failureOrProvice.fold(
      (failure) => state = DistrictState.loadFailure(failure),
      (district) => state = DistrictState.loadSuccess(district)
    );
  }
}
