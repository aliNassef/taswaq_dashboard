import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../core/utils/app_styles.dart';

class PrivacyFieldItem extends StatelessWidget {
  const PrivacyFieldItem({super.key, required this.title});
  final String title;
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
            controller: TextEditingController(),
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
