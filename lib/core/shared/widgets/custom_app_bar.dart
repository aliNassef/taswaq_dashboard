import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

AppBar buildCustomAppBar({required String title}) {
  return AppBar(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: AppStyles.textStyle16SB,
    ),
  );
}
