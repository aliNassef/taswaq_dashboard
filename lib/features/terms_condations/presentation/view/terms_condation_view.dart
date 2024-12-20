import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manger/terms_conndation_cubit/terms_condation_cubit.dart';
import '../../../../core/dI/dependency_injuction.dart';
import '../../domain/repo/terms_condation_repo.dart';
import '../widgets/terms_conddation_view_body.dart';

class TermsCondationView extends StatelessWidget {
  const TermsCondationView({super.key});
  static const routeName = '/terms_condation_view';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocProvider(
        create: (context) => TermsCondationCubit(
          getIt<TermsCondationRepo>(),
        )..getTermsCondation(),
        child: const SafeArea(
          child: TermsCondationViewBody(),
        ),
      ),
    );
  }
}
