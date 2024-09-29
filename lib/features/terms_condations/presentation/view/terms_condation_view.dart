import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/terms_condations/presentation/manger/terms_conndation_cubit/terms_condation_cubit.dart';

import '../../../../core/dI/dependency_injuction.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/repo/terms_condation_repo.dart';
import '../widgets/terms_conddation_view_body.dart';

class TermsCondationView extends StatelessWidget {
  const TermsCondationView({super.key});
  static const routeName = '/terms_condation_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTermsCondationViewAppBar(),
      body: BlocProvider(
        create: (context) => TermsCondationCubit(
          getIt<TermsCondationRepo>(),
        ),
        child: const SafeArea(
          child: TermsCondationViewBody(),
        ),
      ),
    );
  }

  AppBar buildTermsCondationViewAppBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Terms & Conditions',
        style: AppStyles.textStyle16SB,
      ),
    );
  }
}
