import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/user/user.dart';
import 'package:dashboard/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<User>>> getAllUsers();
  Future<Either<UserFailure, List<User>>> getNormalUsers();
  Future<Either<UserFailure, List<User>>> getPlusUsers();
}
