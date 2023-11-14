import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:frontend/domain/elmpier_plus/elmpier_plus_error.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';
part 'elmpier_plus_state.freezed.dart';

@freezed
class ElmpierPlusState with _$ElmpierPlusState {
  const factory ElmpierPlusState.initial() = _Initial;
  const factory ElmpierPlusState.actionInProgress() = _ActionInProgress;
  const factory ElmpierPlusState.createSuccess() = _CreateSuccess;
  const factory ElmpierPlusState.actionFailure(ElmpierPlusError elmpierPlusError) = _ActionFailure;
  const factory ElmpierPlusState.plusUserLoaded(PlusUser plusUser) = _PlusUserLoaded;
}
