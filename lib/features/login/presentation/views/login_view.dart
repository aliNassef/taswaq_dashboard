import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';
import 'package:taswaq_dashboard/features/login/presentation/widgets/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
