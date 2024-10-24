import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../utils/app_colors.dart';

void showToast(
    {required String text,
    Color backgroundColor = AppColors.primaryColor,
    Color textColor = Colors.white}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: 12,
  );
}
