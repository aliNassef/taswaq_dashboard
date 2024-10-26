import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_images.dart';
import 'home_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
