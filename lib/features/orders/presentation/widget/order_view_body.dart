import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manger/cubit/order_cubit.dart';
import 'order_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if (state is OrderSuccess) {
          final orders = state.orders;
          return ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return orders[index].isRecived
                  ? null
                  : OrderItem(
                      order: orders[index],
                    );
            },
          );
        }
        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}
