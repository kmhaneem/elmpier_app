import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_failure.freezed.dart';

@freezed
abstract class MessageFailure implements _$MessageFailure {
    const factory MessageFailure.unExpected() = _UnExpected;
  const factory MessageFailure.notFound() = _NotFound;
  const factory MessageFailure.serverError() = _ServerError;
}
