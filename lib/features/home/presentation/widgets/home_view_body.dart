import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
