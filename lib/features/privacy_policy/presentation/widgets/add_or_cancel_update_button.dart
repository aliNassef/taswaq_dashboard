import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared/widgets/default_app_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../manger/privacy_cubit/privacy_cubit.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const DefaultAppButton(
            text: 'cancel',
            backgroundColor: AppColors.blackColor,
            textColor: Colors.white,
          ),
          DefaultAppButton(
            onPressed: () {
              context.read<PrivacyCubit>().addData();
            },
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
