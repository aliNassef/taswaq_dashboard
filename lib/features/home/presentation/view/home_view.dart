import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Taswaq DashBoard',
                style: AppStyles.textStyle16SB,
              ),
            ],
          )
        ],
      ),
    );
  }
}
