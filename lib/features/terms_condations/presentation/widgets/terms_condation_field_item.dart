
import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../core/utils/app_styles.dart';

class TermsCondationFieldItem extends StatelessWidget {
  const TermsCondationFieldItem(
      {super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.textStyle18B,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.1,
            vertical: MediaQuery.sizeOf(context).height * 0.02,
          ),
          child: CustomTextFormField(
            hintText: 'content',
            controller: controller,
            maxLines: 5,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        ),
      ],
    );
  }
}
