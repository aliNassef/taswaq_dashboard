import 'package:flutter/material.dart';

import '../widgets/terms_conddation_view_body.dart';

class TermsCondationView extends StatelessWidget {
  const TermsCondationView({super.key});
  static const routeName = '/terms_condation_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: TermsCondationViewBody(),
      ),
    );
  }
}
