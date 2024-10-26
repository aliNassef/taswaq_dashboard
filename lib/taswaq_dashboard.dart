import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'features/layout/presentation/view/layout_view.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_router.dart';

class TaswaqDashBoard extends StatelessWidget {
  const TaswaqDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: LayoutView.routeName,
      theme: ThemeData(
        useMaterial3: true,
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
