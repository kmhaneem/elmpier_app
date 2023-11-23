import 'package:dashboard/domain/delivery_person/delivery_person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delivery_person_dto.freezed.dart';
part 'delivery_person_dto.g.dart';

@freezed
class DeliveryPersonDto with _$DeliveryPersonDto {
  const DeliveryPersonDto._();

  const factory DeliveryPersonDto({
    int? id,
    String? name,
    String? email,
  }) = _DeliveryPersonDto;

  factory DeliveryPersonDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPersonDtoFromJson(json);

  factory DeliveryPersonDto.fromDomain(DeliveryPerson deliveryPerson) {
    return DeliveryPersonDto(
      id: deliveryPerson.id,
      name: deliveryPerson.name,
      email: deliveryPerson.email,
    );
  }

  DeliveryPerson toDomain() {
    return DeliveryPerson(
      id: id,
      name: name,
      email: email
    );
  }
}
