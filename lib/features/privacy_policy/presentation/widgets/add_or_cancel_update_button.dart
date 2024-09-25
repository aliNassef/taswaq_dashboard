
import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/default_app_button.dart';
import '../../../../core/utils/app_colors.dart';

class AddorCancelUpdates extends StatelessWidget {
  const AddorCancelUpdates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.1,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DefaultAppButton(
            text: 'cancel',
            backgroundColor: AppColors.blackColor,
            textColor: Colors.white,
          ),
          DefaultAppButton(
            padding: 0,
            text: 'add',
            backgroundColor: AppColors.blackColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
