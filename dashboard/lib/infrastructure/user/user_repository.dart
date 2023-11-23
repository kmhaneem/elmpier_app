import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/user/i_user_repository.dart';
import 'package:dashboard/domain/user/user_failure.dart';
import 'package:dashboard/domain/user/user.dart';
import 'package:dashboard/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:dashboard/infrastructure/user/dto/user_dtos.dart';
import 'package:dio/dio.dart';

class UserRepository extends IUserRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  UserRepository(this._dio);

  @override
  Future<Either<UserFailure, List<User>>> getAllUsers() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/users/all",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        final userDto = (response.data["response"] as List)
            .map((json) => UserDto.fromJson(json));
        final users = userDto.map((dto) => dto.toDomain()).toList();
        return right(users);
      } else {
        return left(const UserFailure.notFound());
      }
    } catch (error) {
      return left(const UserFailure.notFound());
    }
  }
  
  @override
  Future<Either<UserFailure, List<User>>> getNormalUsers() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/users/normal",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => UserDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const UserFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const UserFailure.serverError());
    }
  }
  
  @override
  Future<Either<UserFailure, List<User>>> getPlusUsers() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/users/plus",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => UserDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const UserFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const UserFailure.serverError());
    }
  }
}
