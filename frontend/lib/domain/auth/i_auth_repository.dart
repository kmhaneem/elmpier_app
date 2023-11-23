import 'package:dartz/dartz.dart';
import 'package:frontend/domain/auth/value_objects.dart';
import 'package:frontend/infrastructure/auth/dto/otp_dtos.dart';
import 'package:frontend/infrastructure/auth/dto/sign_in_dtos.dart';
import 'package:frontend/infrastructure/auth/dto/sign_up_dtos.dart';

import '../core/user.dart';
import 'auth_failures.dart';
import 'model/auth.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInUser(SignInDto signInData);
  Future<Either<AuthFailure, Unit>> signUpUser(SignUpDto signUpData);
  Future<Either<AuthFailure, Unit>> verifyOtp(OtpDto otpData);
  void signOut();
  Future<Option<User>> getSignedInUser();
}
