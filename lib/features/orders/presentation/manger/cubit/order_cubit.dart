import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:taswaq_dashboard/features/orders/domain/entity/order_entity.dart';
import 'package:taswaq_dashboard/features/orders/domain/repo/order_repo.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this.orderRepo) : super(OrderInitial());
  final OrderRepo orderRepo;

  Future<void> getOrders() async {
    emit(OrderLoading());
    final result = await orderRepo.getOrders();
    result.fold(
      (failure) => emit(OrderFailure(errMessage: failure.errMessage)),
      (orders) => emit(OrderSuccess(orders: orders)),
    );
  }
}
