import 'package:dartz/dartz.dart';
import 'package:delivery/domain/core/failure.dart';
import 'package:uuid/uuid.dart';


abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

 

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "Value($value)";
}

class UniqueId extends ValueObject<String> {
  Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  UniqueId._(this.value);
}