import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/shared/widgets/custom_text_form_field.dart';
import 'package:taswaq_dashboard/core/shared/widgets/default_app_button.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';

class FqsViewBody extends StatelessWidget {
  const FqsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  hintText: 'Add Question',
                  controller: TextEditingController(),
                  maxLines: 2,
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.01,
              ),
              Expanded(
                child: CustomTextFormField(
                  hintText: 'Add Answer',
                  controller: TextEditingController(),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        ),
        const DefaultAppButton(
          text: 'ADD',
          backgroundColor: AppColors.blackColor,
          textColor: Colors.white,
        )
      ],
    );
  }
}
