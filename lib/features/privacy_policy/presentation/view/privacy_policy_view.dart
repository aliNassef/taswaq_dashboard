import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/layout_drawer.dart';
import '../../../../core/utils/app_styles.dart';
import '../widgets/privacy_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  static const routeName = '/privacy-policy-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildPrivacyViewAppBar(),
      drawer: const LayoutDrawer(),
      body: const SafeArea(
        child: PrivacyPolicyViewBody(),
      ),
    );
  }

  AppBar buildPrivacyViewAppBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Privacy Policy',
        style: AppStyles.textStyle16SB,
      ),
    );
  }
}
