import 'package:dio/dio.dart';
import 'package:taswaq_dashboard/core/services/database_service.dart';

import '../../../../core/services/end_ponits.dart';
import '../../../orders/data/model/order_model.dart';

class HomeRemoteSource {
  final DatabaseService databaseService;

  HomeRemoteSource({required this.databaseService});
  Future<int> getUsers() async {
    final response =
        await databaseService.getDataWithoutId(path: EndPoints.users);
    return response.length;
  }

  Future<int> getProducts() async {
    final response = await Dio().get('https://dummyjson.com/products');
    return response.data['total'];
  }

  Future<int> getOrders() async {
    final response = await databaseService.getSubCollectionData(
      path: EndPoints.users,
      subCollectionName: EndPoints.orders,
    );

    return response.map((data) => OrderModel.fromMap(data)).toList().length;
  }
}
