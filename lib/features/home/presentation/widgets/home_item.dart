import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.image,
    required this.title,
    required this.count,
  });
  final String image;
  final String title;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: MediaQuery.sizeOf(context).height * 0.20,
      width: MediaQuery.sizeOf(context).width * 1 / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Image.asset(
              image,
              height: 50,
              width: 50,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: AppStyles.textStyle14M.copyWith(
              color: AppColors.gray100Color,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  count,
                  style: AppStyles.textStyle16M,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
