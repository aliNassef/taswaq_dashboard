import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/dI/dependency_injuction.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../domain/repo/privacy_policy_repo.dart';
import '../manger/privacy_cubit/privacy_cubit.dart';
import '../../../../core/shared/widgets/layout_drawer.dart';
import '../widgets/privacy_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  static const routeName = '/privacy-policy-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'Privacy Policy'),
      drawer: const LayoutDrawer(),
      body: BlocProvider(
        create: (context) => PrivacyCubit(
          getIt<PrivacyPolicyRepo>(),
        )..getData(),
        child: const SafeArea(
          child: PrivacyPolicyViewBody(),
        ),
      ),
    );
  }
}
