import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/core/shared/functions/toast_dialog.dart';
import 'package:taswaq_dashboard/core/shared/widgets/custom_text_form_field.dart';
import 'package:taswaq_dashboard/core/shared/widgets/default_app_button.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';
import 'package:taswaq_dashboard/features/home/presentation/view/home_view.dart';
import 'package:taswaq_dashboard/core/shared/widgets/app_logo.dart';

import '../manger/cubit/login_cubit.dart';

class LoginBloc extends StatefulWidget {
  const LoginBloc({
    super.key,
  });

  @override
  State<LoginBloc> createState() => _LoginBlocState();
}

class _LoginBlocState extends State<LoginBloc> {
  String? email, pass;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacementNamed(
            context,
            HomeView.routeName,
          );
        }
        if (state is LoginFailure) {
          showToast(
            text: state.errMessage,
            backgroundColor: Colors.teal,
          );
        }
      },
      builder: (_, state) => Center(
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
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const AppLogo(),
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
                      onSaved: (val) {
                        email = val;
                      },
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
                      onSaved: (val) {
                        pass = val;
                      },
                      isPassword: true,
                      label: const Text(
                        'Password',
                        style: AppStyles.textStyle14M,
                      ),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),
                  DefaultAppButton(
                    isLoading: state is LoginLoading,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        log('$email and $pass');
                        formKey.currentState!.save();
                        context
                            .read<LoginCubit>()
                            .login(email: email!, password: pass!);
                      }
                    },
                    text: 'Login',
                    backgroundColor: AppColors.primaryColor,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
