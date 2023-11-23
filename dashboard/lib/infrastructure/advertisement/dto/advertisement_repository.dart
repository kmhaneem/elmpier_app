import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';
import 'package:dashboard/domain/advertisement/i_advertisement_repository.dart';
import 'package:dashboard/infrastructure/advertisement/dto/advertisement_dtos.dart';
import 'package:dashboard/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:dio/dio.dart';

class AdvertisementRepository implements IAdvertisementRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  AdvertisementRepository(this._dio);
  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllAdvertisements() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/advertisements/all",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((e) => AdvertisementDto.fromJson(e));
        final products = advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getApprovedAdvertisements() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/advertisements/approved",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((e) => AdvertisementDto.fromJson(e));
        final products = advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getPendingAdvertisements() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/advertisements/pending",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((e) => AdvertisementDto.fromJson(e));
        final products = advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getRejectedAdvertisements() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/advertisements/rejected",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final advertisementDto = (response.data['response'] as List)
            .map((e) => AdvertisementDto.fromJson(e));
        final products = advertisementDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> approveAdvertisement(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/admin/advertisement/approve/${id}",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> rejectAdvertisement(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/admin/advertisement/reject/${id}",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdvertisementFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const AdvertisementFailure.serverError());
    }
  }
}
