import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome to Taswaq DashBoard',
          style: AppStyles.textStyle16SB,
        ),
      ),
      drawer: const HomeDrawer(),
      body: const HomeViewBody(),
    );
  }
}
