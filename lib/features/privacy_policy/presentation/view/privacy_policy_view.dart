import 'package:flutter/material.dart';

import '../widgets/privacy_policy_vview_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
  static const routeName = '/privacy-policy-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PrivacyPolicyViewBody(),
      ),
    );
  }
}
