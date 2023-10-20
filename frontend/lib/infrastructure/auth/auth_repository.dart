import 'package:dio/dio.dart';
import 'package:frontend/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/i_auth_repository.dart';
import 'package:frontend/domain/auth/model/auth.dart';
import 'package:frontend/domain/core/user.dart';
import 'package:frontend/domain/auth/value_objects.dart';
import 'package:frontend/infrastructure/auth/dto/auth_dtos.dart';
import 'package:frontend/infrastructure/auth/dto/otp_dtos.dart';
import 'package:frontend/infrastructure/auth/dto/sign_in_dtos.dart';
import 'package:frontend/infrastructure/auth/dto/sign_up_dtos.dart';

import '../../domain/core/value_objects.dart';
import '../core/api.dart';
import 'secure_storage/secure_storage_service.dart';

class AuthRepository implements IAuthFacade {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  AuthRepository(this._dio);
  // @override
  // Future<Option<User>> getSignedInUser() async {
  //   final String? authToken = await secureStorage.read("auth-token");
  //   if (authToken != null) {
  //     final String? userId = await secureStorage.read("user-id");

  //     if (userId != null) {
  //       return optionOf(User(id: UniqueId.fromUniqueString(userId)));
  //     }
  //   }
  //   return none();
  // }

  @override
  Future<Option<User>> getSignedInUser() async {
    final String? authToken = await secureStorage.read("token");
    print("Auth token: $authToken");
    if (authToken != null) {
      final String? userId = await secureStorage.read("user-id");
      print("User ID: $userId");
      if (userId != null) {
        return optionOf(User(id: UniqueId.fromUniqueString(userId)));
      }
    }
    return none();
  }

  @override
  Future<void> signOut() async {
    await secureStorage.delete("token");
    print(await secureStorage.read("auth-token"));
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpUser(SignUpDto signUpData) async {
    try {
      // final authDto = AuthDto.fromDomain(auth);
      FormData formData = FormData.fromMap({
        "email": signUpData.email.getOrCrash(),
        "phone": signUpData.phone.getOrCrash(),
        "password": signUpData.password.getOrCrash(),
        // "salt": authDto.salt,
        // "firstname": authDto.firstname,
        // "lastname": authDto.lastname,
        // "verified": authDto.verified,
        // "otp": authDto.verified,
        // "profile": authDto.profile
      });
      print("Sending data: ${formData.fields}");

      final response = await Dio().post(
        "$api2/user/signup",
        data: formData,
        options: Options(
          headers: <String, String>{
            // 'Authorization': 'Bearer $token',
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 201) {
        print("Token to write: ${response.data['response']['token']}");
        await secureStorage.write(
            "unverified-token", response.data['response']['token']);
        print(await secureStorage.read("unverified-token"));

        return right(unit);
      } else {
        return left(const AuthFailure.unExpectedError());
      }
    } on DioException catch (e) {
      print("Error details: ${e.response?.data}");
      print("Error in create: $e");
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUser(SignInDto signInData) async {
    try {
      // final authDto = AuthDto.fromDomain(auth);
      // FormData formData = FormData.fromMap({
      //   "email": signInData.email.getOrCrash(),
      //   "password": signInData.password.getOrCrash(),
      // });
      // print("Sending data: ${formData.fields}");

      final response = await Dio().post(
        "$api2/user/signin",
        data: {
          "email": signInData.email.getOrCrash(),
          "password": signInData.password.getOrCrash(),
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        await secureStorage.write(
            "user-id", response.data['response']['id'].toString());
        await secureStorage.write("token", response.data['response']['token']);
        print(await secureStorage.read("user-id"));
        print(await secureStorage.read("token"));
        return right(unit);
      } else {
        return left(const AuthFailure.unExpectedError());
      }
    } on DioException catch (e) {
      print("Error details: ${e.response?.data}");
      print("Error in create: $e");
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyOtp(OtpDto otpData) async {
    try {
      final token = await secureStorage.read("unverified-token");
      print("Token is reading $token");
      final response = await Dio().patch(
        "$api2/user/verify",
        data: {
          "otp": otpData.otp.getOrCrash(),
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) {
        await secureStorage.delete("unverified-token");
        await secureStorage.write(
            "auth-token", response.data['response']['token']);
        return right(unit);
      } else {
        return left(const AuthFailure.unExpectedError());
      }
    } on DioException catch (e) {
      print("Error details: ${e.response?.data}");
      print("Error in otp verify: $e");
      return left(const AuthFailure.serverError());
    }
  }
}
