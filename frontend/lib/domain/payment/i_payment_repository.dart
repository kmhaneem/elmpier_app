import 'package:dartz/dartz.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/domain/payment/payment_failure.dart';

abstract class IPaymentRepository {
  Future<Either<PaymentFailure, Unit>> makePayment(Orders order);
}
