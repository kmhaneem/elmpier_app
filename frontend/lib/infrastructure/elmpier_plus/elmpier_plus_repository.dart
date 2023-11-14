import 'package:dio/dio.dart';
import 'package:frontend/domain/elmpier_plus/elmpier_plus_error.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/elmpier_plus/i_elmpier_plus_repository.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:frontend/infrastructure/elmpier_plus/dto/plus_user_dtos.dart';

import '../../shared/providers.dart';

class ElmpierPlusRepository implements IElmpierPlusRepository {
  final Dio _dio;
  ElmpierPlusRepository(this._dio);
  @override
  Future<Either<ElmpierPlusError, Unit>> elmpierPlusCreate(Orders order) async {
    try {
      final String? token = await secureStorage.read("token");
      final response = await _dio.patch(
        "$api2/user/eplus",
        data: {
          "paymentMethod": order.paymentMethod,
          "status": order.status,
          "paymentId": order.paymentId,
        },
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ElmpierPlusError.serverError());
      }
    } catch (error) {
      return left(const ElmpierPlusError.serverError());
    }
  }

  @override
  Future<Either<ElmpierPlusError, PlusUser>> elmpierPlusCheck() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/user/eplus/verify",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        print("PLUS USER DATA ${response.data['response']}");
        final plusUserDto = PlusUserDto.fromJson(response.data['response'][0]);
        final plusUser = plusUserDto.toDomain();
        return right(plusUser);
      } else {
        return left(const ElmpierPlusError.serverError());
      }
    } catch (error) {
      print("Plus User data error: $error");
      return left(const ElmpierPlusError.serverError());
    }
  }
}
