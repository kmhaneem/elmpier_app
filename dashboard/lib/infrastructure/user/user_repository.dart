import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/user/i_user_repository.dart';
import 'package:dashboard/domain/user/user_failure.dart';
import 'package:dashboard/domain/user/user.dart';
import 'package:dashboard/infrastructure/user/dto/user_dtos.dart';
import 'package:dio/dio.dart';

class UserRepository extends IUserRepository {
  final Dio _dio;
  UserRepository(this._dio);

  @override
  Future<Either<UserFailure, List<User>>> getAllUsers() async {
    try {
      final response = await _dio.get(
        "$api/admin/users",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

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
}
