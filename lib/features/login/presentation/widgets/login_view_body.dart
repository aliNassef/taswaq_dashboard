
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'login_bloc.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.subprimaryColor5,
            AppColors.subprimaryColor4,
            AppColors.subprimaryColor3,
            AppColors.subprimaryColor2,
            AppColors.subprimaryColor1,
            AppColors.primaryColor,
          ],
        ),
      ),
      child: const LoginBloc(),
    );
  }
}
