
import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entity/order_entity.dart';

class OrderOwner extends StatelessWidget {
  const OrderOwner({
    super.key,
    required this.order,
  });

  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.subprimaryColor5,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            order.address.name,
            style: AppStyles.textStyle14SB.copyWith(color: Colors.white),
          ),
          Text(
            order.id.substring(0, 11),
            style: AppStyles.textStyle14SB.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
