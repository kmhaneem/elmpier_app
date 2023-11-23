import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/delivery_person/delivery_person.dart';
import 'package:dashboard/domain/delivery_person/delivery_person_failure.dart';
import 'package:dashboard/domain/delivery_person/i_delivery_person.dart';
import 'package:dashboard/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:dashboard/infrastructure/delivery_person/dto/delivery_person_dto.dart';
import 'package:dio/dio.dart';

class DeliveryPersonRepository implements IDeliveryPerson {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  DeliveryPersonRepository(this._dio);
  @override
  Future<Either<DeliveryPersonFailure, List<DeliveryPerson>>>
      getAllDeliveryPerson() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/delivery/users",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => DeliveryPersonDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const DeliveryPersonFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const DeliveryPersonFailure.serverError());
    }
  }
}
