import 'package:dio/dio.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/infrastructure/advertisement/dto/advertisement_dtos.dart';
import 'package:frontend/infrastructure/core/api.dart';

import '../auth/secure_storage/secure_storage_service.dart';

class AdvertisementRepository implements IAdvertisementRepository {
  final Dio _dio;
  AdvertisementRepository(this._dio);
  SecureStorageService secureStorage = SecureStorageService();
  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllAdvertisement() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/advertisement",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );
      final data = response.data['response'];
      print("REsponse is $data");

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((json) => AdvertisementDto.fromJson(json))
            .toList();
        final advertisement =
            advertisementDto.map((dto) => dto.toDomain()).toList();
        print("CALLED SUCCESS ADS");
        return right(advertisement);
      } else {
        return left(const AdvertisementFailure.serverError());
      }
    } catch (error) {
      print("CALLED Failed ADS $error");
      return left(const AdvertisementFailure.serverError());
    }
  }
  
  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAllSearchAdvertisement(String query, int? userId) async {
    try {
      final response = await Dio().get(
        '$api2/advetisement/search',
        data: {
          "userId": userId,
        },
        queryParameters: {'query': query},
      );
      final data = response.data['response'];
      print('Response Data FOR SEArCH: ${data}');
      // print('Response Data: ${response.data}');

      if (response.statusCode == 200) {
        final advertisementDto =
            (response.data as List).map((e) => AdvertisementDto.fromJson(e));
        final advertisements = advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(advertisements);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (e) {
      print('Repository Errorxxx: $e');
      return left(const AdvertisementFailure.serverError());
    }
  }
}
