import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class AdminItem extends StatelessWidget {
  const AdminItem({
    super.key,
    required this.isSelected,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final bool isSelected;
  final String text;
  final Widget icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
        ),
        height: MediaQuery.sizeOf(context).height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: AppStyles.textStyle14SB,
            ),
          ],
        ),
      ),
    );
  }
}
