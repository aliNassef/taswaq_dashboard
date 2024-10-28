import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/core/dI/dependency_injuction.dart';
import 'package:taswaq_dashboard/features/home/domain/home_repo.dart';
import 'package:taswaq_dashboard/features/home/presentation/manger/cubit/home_cubit.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        getIt<HomeRepo>(),
      ),
      child: const HomeViewBody(),
    );
  }
}
