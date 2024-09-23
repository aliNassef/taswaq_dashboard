import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';

import 'core/utils/app_router.dart';

class TaswaqDashBoard extends StatelessWidget {
  const TaswaqDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: '',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(),
        ),
        fontFamily: 'PlusJakartaSans',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
    );
  }
}
