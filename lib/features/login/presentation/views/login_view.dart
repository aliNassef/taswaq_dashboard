import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/login/presentation/manger/cubit/login_cubit.dart';
import '../../../../core/dI/dependency_injuction.dart';
import '../../domain/repo/login_repo.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  
  static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(
          getIt<LoginRepo>(),
        ),
        child: const LoginViewBody(),
      ),
    );
  }
}
