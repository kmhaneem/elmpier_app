import 'package:dartz/dartz.dart';
import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:delivery/domain/auth/i_auth_repository.dart';
import 'package:delivery/domain/auth/model/auth.dart';
import 'package:delivery/domain/core/auth_user.dart';
import 'package:delivery/domain/core/value_object.dart';
import 'package:delivery/domain/profile/user_profile.dart';
import 'package:delivery/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:delivery/infrastructure/core/api.dart';
import 'package:delivery/infrastructure/profile/dtos/user_profile_dto.dart';
import 'package:dio/dio.dart';

class AuthRepository implements IAuthRepository {
  final Dio _dio;
  AuthRepository(this._dio);
  final SecureStorageService secureStorage = SecureStorageService();
  

  @override
  Future<Either<AuthFailure, Unit>> signIn(Auth auth) async {
    try {
      final response = await _dio.post(
        "$api/delivery-person/login",
        data: {
          "email": auth.email,
          "password": auth.password,
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
      print("User Id IS  ${response.data["response"]["id"]}");
      if (response.statusCode == 200) {
        final userId = response.data["response"]["id"].toString();
        final token = response.data["response"]["token"];
        await secureStorage.write("token", token);
        await secureStorage.write("user-id", userId);
        print(await secureStorage.read("token"));
        print(await secureStorage.read("user-id"));
        return right(unit);
      } else {
        return left(AuthFailure.serverError());
      }
    } catch (error) {
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Option<AuthUser>> getSignedInUser() async {
    final String? authToken = await secureStorage.read("token");
    print("Auth token: $authToken");
    if (authToken != null) {
      final String? userId = await secureStorage.read("user-id");
      print("User ID: $userId");
      if (userId != null) {
        return optionOf(AuthUser(id: UniqueId.fromUniqueString(userId)));
      }
    }
    return none();
  }

  @override
  Future<void> signOut() async {
    await secureStorage.delete("token");
  }

  @override
  Future<Either<AuthFailure, UserProfile>> getUserProfile() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/delivery-person/profile",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      print('API Response for GET USER: ${response.data}');

      if (response.statusCode == 200) {
        final userDto = UserProfileDto.fromJson(response.data['response']);
        final user = userDto.toDomain();
        print(userDto);
        print(user);
        print("USER DATA RETURINING *********+++++++++******* $user");
        return right(user);
      } else {
        return left(const AuthFailure.notFound());
      }
    } catch (e) {
      print('Repository Error: $e');
      return left(const AuthFailure.serverError());
    }
  }
}
