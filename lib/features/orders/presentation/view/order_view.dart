import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/core/dI/dependency_injuction.dart';
import 'package:taswaq_dashboard/features/orders/presentation/manger/cubit/order_cubit.dart';

import '../../domain/repo/order_repo.dart';
import '../widget/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocProvider(
        create: (context) => OrderCubit(
          getIt<OrderRepo>(),
        )..getOrders(),
        child: const OrderViewBody(),
      ),
    );
  }
}
