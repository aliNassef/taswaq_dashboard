import '../../../../core/services/end_ponits.dart';
import '../../domain/entity/order_entity.dart';
import 'address_model.dart';
import 'cart_model.dart';

class OrderModel extends OrderEntity {
  OrderModel({
    required super.id,
    required super.orders,
    required super.isRecived,
    required super.totalPrice,
    required super.address,
  });

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map[ApiKey.id],
      orders: List<CartModel>.from(
        map[ApiKey.orders].map(
          (x) => CartModel.fromMap(x),
        ),
      ),
      isRecived: map[ApiKey.isRecived],
      totalPrice: map[ApiKey.total],
      address: AddressModel.fromMap(map[ApiKey.address]),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      ApiKey.id: id,
      ApiKey.orders: orders.map((x) => x.toJson()).toList(),
      ApiKey.isRecived: isRecived,
      ApiKey.total: totalPrice,
      ApiKey.address: address.toMap(),
    };
  }
}
