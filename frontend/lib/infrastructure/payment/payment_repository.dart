import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/domain/payment/i_payment_repository.dart';
import 'package:frontend/domain/payment/payment_failure.dart';
import 'package:frontend/infrastructure/orders/orders_dto.dart';

import '../auth/secure_storage/secure_storage_service.dart';
import '../core/api.dart';

class PaymentRepository implements IPaymentRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  PaymentRepository(this._dio);

  @override
  Future<Either<PaymentFailure, Unit>> makePayment(Orders order) async {
    try {
      final String? token = await secureStorage.read("token");
      final orderDto = OrderDto.fromDomain(order);
      FormData formData = FormData.fromMap({
        "userId": order.userId,
        "paymentMethod": order.paymentMethod,
        "status": order.status,
        "paymentId": order.paymentId,
        "statusId": order.statusId,
        "amount": order.amount
      });

      final response = await _dio.post(
        "$api2/payment",
        data: formData,
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      print('Payment API Response: ${response.data}');

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const PaymentFailure.paymentDenied());
      }
    } catch (e) {
      return left(const PaymentFailure.paymentDenied());
    }
  }
}
