import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/shared/widgets/default_app_button.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entity/order_entity.dart';

class AddressAndRecivedButton extends StatelessWidget {
  const AddressAndRecivedButton({
    super.key,
    required this.order,
  });

  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Address',
          style: AppStyles.textStyle16M.copyWith(color: AppColors.redColor),
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            Text(
              'phone number :',
              style: AppStyles.textStyle16M.copyWith(
                color: AppColors.subprimaryColor4,
              ),
            ),
            Text(
              ' 0${order.address.phoneNumber}',
              style: AppStyles.textStyle14SB,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        Row(
          children: [
            Text(
              'City :',
              style: AppStyles.textStyle16M.copyWith(
                color: AppColors.subprimaryColor4,
              ),
            ),
            Text(
              ' ${order.address.city}',
              style: AppStyles.textStyle14SB,
            ),
            const Spacer(),
            Text(
              'Street :',
              style: AppStyles.textStyle16M.copyWith(
                color: AppColors.subprimaryColor4,
              ),
            ),
            Text(
              ' ${order.address.street}',
              style: AppStyles.textStyle14SB,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        Row(
          children: [
            Text(
              'Postal Code :',
              style: AppStyles.textStyle16M.copyWith(
                color: AppColors.subprimaryColor4,
              ),
            ),
            Text(
              order.address.postalCode,
              style: AppStyles.textStyle14SB,
            ),
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 160,
              child: DefaultAppButton(
                padding: 0,
                text: 'Recived',
                backgroundColor: AppColors.subprimaryColor4,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
