import 'package:dartz/dartz.dart';
import 'package:frontend/domain/elmpier_plus/elmpier_plus_error.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';
import 'package:frontend/domain/orders/model/orders.dart';

abstract class IElmpierPlusRepository {
  Future<Either<ElmpierPlusError, Unit>> elmpierPlusCreate(Orders order);
  Future<Either<ElmpierPlusError, PlusUser>> elmpierPlusCheck();
}
