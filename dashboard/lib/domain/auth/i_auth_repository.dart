import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/admin/admin.dart';
import 'package:dashboard/domain/auth/auth.dart';
import 'package:dashboard/domain/auth/auth_failure.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signIn(Auth auth);
  Future<Option<Admin>> getSignedInAdmin();
  Future<void> signOut();
}
