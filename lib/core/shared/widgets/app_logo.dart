import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 40,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.01,
        ),
        const Text(
          'Taswaq',
          style: AppStyles.textStyle24B,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
