import 'package:dio/dio.dart';
import 'package:taswaq_dashboard/core/services/database_service.dart';

import '../../../../core/services/end_ponits.dart';

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
    final response =
        await databaseService.getDataWithoutId(path: EndPoints.orders);
    return response.length;
  }
  
}
