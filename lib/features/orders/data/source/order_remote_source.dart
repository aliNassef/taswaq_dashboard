import '../../../../core/services/database_service.dart';
import '../model/order_model.dart';

import '../../../../core/services/end_ponits.dart';

class OrderRemoteSource {
  final DatabaseService databaseService;

  OrderRemoteSource({required this.databaseService});

  Future<List<OrderModel>> getOrders() async {
    final response = await databaseService.getSubCollectionData(
      path: EndPoints.users,
      subCollectionName: EndPoints.orders,
    );

    return response.map((data) => OrderModel.fromMap(data)).toList();
  }
}
