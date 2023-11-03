import 'package:dartz/dartz.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_address/model/district.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
import 'package:frontend/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, UserModel>> getUserProfile();
  Future<Either<UserFailure, List<Province>>> getProvince();
  Future<Either<UserFailure, List<District>>> getDistrict();
  Future<Either<UserFailure, Unit>> updateUserProfile(UserModel userModel);
}
