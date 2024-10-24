import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/shared/widgets/custom_text_form_field.dart';
import 'package:taswaq_dashboard/core/shared/widgets/default_app_button.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';
import 'package:taswaq_dashboard/features/login/presentation/widgets/login_bloc_title.dart';

class LoginBloc extends StatelessWidget {
  const LoginBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height * 3 / 5,
        width: MediaQuery.sizeOf(context).width * 0.32,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LoginBlocTitle(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            const Text(
              'Login',
              style: AppStyles.textStyle18B,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              'Enter your credentials to access your account',
              style: AppStyles.textStyle12R.copyWith(
                color: AppColors.gray150Color,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextFormField(
                label: const Text(
                  'Email',
                  style: AppStyles.textStyle14M,
                ),
                hintText: 'Enter Your Email',
                controller: TextEditingController(),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFormField(
                isPassword: true,
                label: const Text(
                  'Password',
                  style: AppStyles.textStyle14M,
                ),
                hintText: 'Enter Your Password',
                controller: TextEditingController(),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.04,
            ),
            const DefaultAppButton(
              text: 'Login',
              backgroundColor: AppColors.primaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
