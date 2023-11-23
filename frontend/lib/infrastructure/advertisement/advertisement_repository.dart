import 'package:dio/dio.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
import 'package:frontend/infrastructure/advertisement/dto/advertisement_condition_dtos.dart';
import 'package:frontend/infrastructure/advertisement/dto/advertisement_dtos.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:image_picker/image_picker.dart';

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

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((json) => AdvertisementDto.fromJson(json))
            .toList();
        final advertisement =
            advertisementDto.map((dto) => dto.toDomain()).toList();
        return right(advertisement);
      } else {
        return left(const AdvertisementFailure.serverError());
      }
    } catch (error) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllSearchAdvertisement(String query, int? userId) async {
    try {
      final response = await Dio().get(
        '$api2/advetisement/search',
        data: {
          "userId": userId,
        },
        queryParameters: {'query': query},
      );

      if (response.statusCode == 200) {
        final advertisementDto =
            (response.data as List).map((e) => AdvertisementDto.fromJson(e));
        final advertisements =
            advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(advertisements);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (e) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> create(
      Advertisement advertisement, List<XFile> images) async {
    try {
      final String? token = await secureStorage.read("token");
      final advertisementDto = AdvertisementDto.fromDomain(advertisement);

      FormData formData = FormData.fromMap({
        "name": advertisementDto.name,
        "description": advertisementDto.description,
        "provinceId": advertisementDto.provinceId,
        "districtId": advertisementDto.districtId,
        "categoryId": advertisementDto.categoryId,
        "brandId": advertisementDto.brandId,
        "modelId": advertisementDto.modelId,
        "price": advertisementDto.price,
        "conditionId": advertisementDto.conditonId
      });

      for (var image in images) {
        formData.files.add(MapEntry("images",
            await MultipartFile.fromFile(image.path, filename: image.name)));
      }

      final response = await _dio.post(
        "$api2/advertisement/create",
        data: formData,
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (e) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<AdvertisementCondition>>>
      getAllAdvertisementCondition() async {
    try {
      final response = await _dio.get("$api2/advertisement/condition");

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((e) => AdvertisementConditionDto.fromJson(e));
        final conditions =
            advertisementDto.map((dto) => dto.toDomain()).toList();
        return right(conditions);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (error) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllActiveAdvertisement() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/advertisement/active",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print("AVD SUCCESS AND DATA ${response.data["response"]}");

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((json) => AdvertisementDto.fromJson(json))
            .toList();
        final advertisement =
            advertisementDto.map((dto) => dto.toDomain()).toList();
        return right(advertisement);
      } else {
        return left(const AdvertisementFailure.serverError());
      }
    } catch (error) {
      print("ADV Failed $error");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllExpiredAdvertisement() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/advertisement/expired",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((json) => AdvertisementDto.fromJson(json))
            .toList();
        final advertisement =
            advertisementDto.map((dto) => dto.toDomain()).toList();
        return right(advertisement);
      } else {
        return left(const AdvertisementFailure.serverError());
      }
    } catch (error) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> update(
      Advertisement advertisement, List<XFile> images) async {
    try {
      final String? token = await secureStorage.read("token");
      final advertisementDto = AdvertisementDto.fromDomain(advertisement);

      FormData formData = FormData.fromMap({
        "name": advertisementDto.name,
        "description": advertisementDto.description,
        "price": advertisementDto.price,
      });

      for (var image in images) {
        formData.files.add(MapEntry("images",
            await MultipartFile.fromFile(image.path, filename: image.name)));
      }

      final response = await _dio.patch(
        "$api2/advertisements/advertisement/${advertisement.id}",
        data: formData,
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (e) {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> delete(int id) async {
    try {
      final String? token = await secureStorage.read("token");
      final response = await _dio.delete(
        "$api2/advertisements/advertisement/${id}",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } catch (error) {
      return left(const AdvertisementFailure.serverError());
    }
  }
}
