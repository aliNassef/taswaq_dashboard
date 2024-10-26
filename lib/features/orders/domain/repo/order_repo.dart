import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entity/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Failure, List<OrderEntity>>> getOrders();
}
