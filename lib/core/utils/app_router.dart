import 'package:flutter/material.dart';
import '../../features/fqs/presentation/view/fqs_view.dart';
import '../../features/home/presentation/view/home_view.dart';

import '../../features/privacy_policy/presentation/view/privacy_policy_view.dart';
import '../../features/terms_condations/presentation/view/terms_condation_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );
    case PrivacyPolicyView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PrivacyPolicyView(),
      );
    case TermsCondationView.routeName:
      return MaterialPageRoute(
        builder: (context) => const TermsCondationView(),
      );
    case FqsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const FqsView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('No route defined for '),
          ),
        ),
      );
  }
}
