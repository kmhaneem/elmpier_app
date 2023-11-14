import 'package:freezed_annotation/freezed_annotation.dart';
part 'elmpier_plus_error.freezed.dart';

@freezed
abstract class ElmpierPlusError implements _$ElmpierPlusError {
  const factory ElmpierPlusError.unExpected() = _UnExpected;
  const factory ElmpierPlusError.notFound() = _NotFound;
  const factory ElmpierPlusError.serverError() = _ServerError;
}
