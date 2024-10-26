import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_images.dart';
import 'package:taswaq_dashboard/features/layout/presentation/view/layout_view.dart';

import '../../../../core/utils/app_colors.dart';
import 'home_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LayoutView(),
        const VerticalDivider(
          color: AppColors.primaryColor,
          thickness: 1,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.white,
            child: Wrap(
              children: [
                HomeItem(
                  count: 100.toString(),
                  image: AppImages.users,
                  title: 'Users',
                ),
                HomeItem(
                  count: 100.toString(),
                  image: AppImages.money,
                  title: 'Payments',
                ),
                HomeItem(
                  count: 100.toString(),
                  image: AppImages.products,
                  title: 'Products',
                ),
                HomeItem(
                  count: 100.toString(),
                  image: AppImages.orders,
                  title: 'Orders',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
