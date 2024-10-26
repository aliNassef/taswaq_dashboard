import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../source/order_remote_source.dart';
import '../../domain/entity/order_entity.dart';
import '../../domain/repo/order_repo.dart';

class OrderRepoImpl extends OrderRepo {
  final OrderRemoteSource orderRemoteSource;

  OrderRepoImpl({required this.orderRemoteSource});
  @override
  Future<Either<Failure, List<OrderEntity>>> getOrders() async {
    try {
      final data = await orderRemoteSource.getOrders();
      return right(data);
    } catch (e) {
      return left(Failure(errMessage: e.toString()));
    }
  }
}
