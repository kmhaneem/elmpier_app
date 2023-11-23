import 'package:freezed_annotation/freezed_annotation.dart';
part 'delivery_person.freezed.dart';

@freezed
class DeliveryPerson with _$DeliveryPerson {
  const factory DeliveryPerson({int? id, String? name, String? email}) =
      _DeliveryPerson;
}
