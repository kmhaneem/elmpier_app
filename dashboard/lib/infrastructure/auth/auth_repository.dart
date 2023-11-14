import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/admin/admin.dart';
import 'package:dashboard/domain/auth/auth_failure.dart';
import 'package:dashboard/domain/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/auth/i_auth_repository.dart';
import 'package:dio/dio.dart';

import 'secure_storage/secure_storage_service.dart';

class AuthRepository implements IAuthRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  AuthRepository(this._dio);
  @override
  Future<Either<AuthFailure, Unit>> signIn(Auth auth) async {
    try {
      final response = await _dio.post(
        "$api/admin/login",
        data: {"email": auth.email, "password": auth.password},
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
      print("READY TO GET");

      if (response.statusCode == 200) {
        await secureStorage.write(
            "admin_id", response.data['response']['id'].toString());
        await secureStorage.write("token", response.data['response']['token']);
        
        return right(unit);
      } else {
        return left(const AuthFailure.notFound());
      }
    } on DioException catch (e) {
      print("Failed TO GET $e");
      return left(const AuthFailure.notFound());
    }
  }

  // @override
  // Future<Option<Admin>> getSignedInAdmin() async {
  //   final String? authToken = await secureStorage.read("token");
  //   print("Auth token: $authToken");
  //   if (authToken != null) {
  //     final String? adminId = await secureStorage.read("admin_id");
  //     print("Admin ID: $adminId");
  //     if (adminId != null) {
  //       return optionOf(Admin(id: int.parse(adminId)));
  //     }
  //   }
  // return none();
  // }

  @override
Future<Option<Admin>> getSignedInAdmin() async {
    final String? authToken = await secureStorage.read("token");
    print("Auth token: $authToken");
    if (authToken != null) {
        final String? adminId = await secureStorage.read("admin_id");
        print("Admin ID: $adminId");
        if (adminId != null) {
            print("Returning Admin Object");
            return optionOf(Admin(id: int.parse(adminId)));
        } else {
            print("Admin ID is null");
        }
    } else {
        print("Auth token is null");
    }
    print("Returning none");
    return none();
}

  @override
  Future<void> signOut() async {
    await secureStorage.delete("token");
  }

}
