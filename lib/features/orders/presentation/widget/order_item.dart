import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../domain/entity/order_entity.dart';
import 'address_and_recived_button.dart';
import 'order_owner.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.order});
  final OrderEntity order;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ExpansionTile(
        title: OrderOwner(order: order),
        trailing: const Icon(Icons.arrow_drop_down),
        children: List.generate(
          order.orders.length,
          (index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.network(
                    order.orders[index].image,
                    height: 100,
                    width: 100,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Product Name : ',
                      style: AppStyles.textStyle16M
                          .copyWith(color: AppColors.subprimaryColor4),
                    ),
                    Text(
                      ' ${order.orders[index].title}',
                      style: AppStyles.textStyle14SB,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Price : ',
                      style: AppStyles.textStyle16M.copyWith(
                        color: AppColors.subprimaryColor4,
                      ),
                    ),
                    Text(
                      ' ${order.orders[index].price} EGP',
                      style: AppStyles.textStyle14SB,
                    ),
                    const Spacer(),
                    Text(
                      'Quantity : ',
                      style: AppStyles.textStyle16M.copyWith(
                        color: AppColors.subprimaryColor4,
                      ),
                    ),
                    Text(
                      ' ${order.orders[index].quantity}',
                      style: AppStyles.textStyle14SB,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                Visibility(
                  visible: index == order.orders.length - 1,
                  child: AddressAndRecivedButton(order: order),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
