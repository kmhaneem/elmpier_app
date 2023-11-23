import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/domain/user/i_user_repository.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
import 'package:frontend/domain/user/user_address/model/district.dart';
import 'package:frontend/domain/user/user_failure.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:frontend/infrastructure/user/user_address/dto/district_dto.dart';
import 'package:frontend/infrastructure/user/user_address/dto/province_dto.dart';

import '../auth/secure_storage/secure_storage_service.dart';
import 'dto/user_dtos.dart';

class UserRepository implements IUserRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  UserRepository(this._dio);

  @override
  Future<Either<UserFailure, UserModel>> getUserProfile() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/user/profile",
        options: Options(headers: <String, String>{
          'Authorization': 'Bearer $token',
        }),
      );
      print("PROFILE TOKEN $token");

      if (response.statusCode == 200) {
        final userDto = UserDto.fromJson(response.data['response']);
        final user = userDto.toDomain();

        return right(user);
      } else {
        return left(const UserFailure.notFound());
      }
    } catch (e) {
      print('Repository Error: $e');
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<Province>>> getProvince() async {
    try {
      final response = await _dio.get("$api2/province");
      if (response.statusCode == 200) {
        final provinceDto = (response.data["response"] as List)
            .map((e) => ProvinceDto.fromJson(e))
            .toList();
        final provice = provinceDto.map((dto) => dto.toDomain()).toList();
        print("province details $provice");
        return right(provice);
      } else {
        return left(const UserFailure.notFound());
      }
    } catch (error) {
      throw left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<District>>> getDistrict() async {
    try {
      final response = await _dio.get("$api2/district");
      if (response.statusCode == 200) {
        final districtDto = (response.data["response"] as List)
            .map((e) => DistrictDto.fromJson(e));
        final district = districtDto.map((dto) => dto.toDomain()).toList();
        return right(district);
      } else {
        return left(const UserFailure.notFound());
      }
    } catch (error) {
      print("Error Happends here");
      throw left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateUserProfile(
      UserModel userInputs) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api2/user/profile",
        data: {
          'firstName': userInputs.firstName,
          'lastName': userInputs.lastName,
          'addressLine1': userInputs.addressLine1,
          'addressLine2': userInputs.addressLine2,
          'postalCode': userInputs.postalCode,
          'city': userInputs.city,
          'district': userInputs.district,
          'province': userInputs.province,
        },
        options: Options(headers: <String, String>{
          'Authorization': 'Bearer $token',
        }),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const UserFailure.notFound());
      }
    } catch (e) {
      print('Repository Error: $e');
      return left(const UserFailure.serverError());
    }
  }
}
