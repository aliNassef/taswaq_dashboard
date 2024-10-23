import 'package:dartz/dartz.dart';
import 'package:taswaq_dashboard/core/errors/failure.dart';
 import 'package:taswaq_dashboard/features/orders/domain/entity/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Failure, List<OrderEntity>>> getOrders();
}
