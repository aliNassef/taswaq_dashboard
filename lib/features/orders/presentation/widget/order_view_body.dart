import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/orders/presentation/manger/cubit/order_cubit.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if (state is OrderSuccess) { 
          return ListView.builder(
            itemCount: state.orders.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                width: 200,
                child: Text('${state.orders[index].isRecived}'),
              );
            },
          );
        }
        return const Placeholder();
      },
    );
  }
}
