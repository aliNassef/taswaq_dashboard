import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../widgets/fqs_view_body.dart';

class FqsView extends StatelessWidget {
  const FqsView({super.key});
  static const routeName = '/fqs_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'FAQs'),
      body: const FqsViewBody(),
    );
  }
}
