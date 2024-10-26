import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/fqs/presentation/manger/fqs_cubit/fqs_cubit.dart';

import '../../../../core/dI/dependency_injuction.dart';
import '../../domain/repo/fqs_repo.dart';
import '../widgets/fqs_view_body.dart';

class FqsView extends StatelessWidget {
  const FqsView({super.key});
  static const routeName = '/fqs_view';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocProvider(
        create: (context) => FqsCubit(
          getIt<FqsRepo>(),
        ),
        child: const FqsViewBody(),
      ),
    );
  }
}
