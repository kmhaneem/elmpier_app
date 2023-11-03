import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/user_failure.dart';

import '../../../../domain/user/user_address/model/province.dart';
part 'province_state.freezed.dart';

@freezed
abstract class ProvinceState with _$ProvinceState {
  const factory ProvinceState.initial() = _Initial;
  const factory ProvinceState.loadInProgress() = _LoadInProgress;
  const factory ProvinceState.loadSuccess(List<Province> province) = _LoadSuccess;
  const factory ProvinceState.loadFailure(UserFailure productFailure) =
      _LoadFailure;
}

