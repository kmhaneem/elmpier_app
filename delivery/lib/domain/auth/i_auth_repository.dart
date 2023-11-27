import 'package:dartz/dartz.dart';
import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:delivery/domain/auth/model/auth.dart';
import 'package:delivery/domain/core/auth_user.dart';
import 'package:delivery/domain/profile/user_profile.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signIn(Auth auth);
  Future<Option<AuthUser>> getSignedInUser();
  Future<void> signOut();
  Future<Either<AuthFailure, UserProfile>> getUserProfile();
}
