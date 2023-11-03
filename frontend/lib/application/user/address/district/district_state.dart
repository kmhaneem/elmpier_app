import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/user_failure.dart';

import '../../../../domain/user/user_address/model/district.dart';

part 'district_state.freezed.dart';

@freezed
abstract class DistrictState with _$DistrictState {
  const factory DistrictState.initial() = _Initial;
  const factory DistrictState.loadInProgress() = _LoadInProgress;
  const factory DistrictState.loadSuccess(List<District> district) = _LoadSuccess;
  const factory DistrictState.loadFailure(UserFailure productFailure) =
      _LoadFailure;
}