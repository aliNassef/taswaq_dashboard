import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/shared/functions/toast_dialog.dart';
import '../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../core/shared/widgets/default_app_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../manger/fqs_cubit/fqs_cubit.dart';

import '../../domain/entity/fqs_entity.dart';

class FqsViewBody extends StatelessWidget {
  const FqsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FqsCubit>();
    return BlocListener<FqsCubit, FqsState>(
      listenWhen: (previous, current) =>
          current is FqsSuccess || current is FqsFailure,
      listener: (context, state) {
        if (state is FqsSuccess) {
          showToast(text: 'Faq added successfully');
        }
        if (state is FqsFailure) {
          showToast(text: state.errMessage);
        }
      },
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: 'Add Question',
                    controller: cubit.questionController,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.01,
                ),
                Expanded(
                  child: CustomTextFormField(
                    hintText: 'Add Answer',
                    controller: cubit.answerController,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: DefaultAppButton(
              padding: MediaQuery.sizeOf(context).height * 4 / 6,
              onPressed: () {
                final entity = FqsEntity(
                  answer: cubit.answerController.text,
                  question: cubit.questionController.text,
                  id: '${DateTime.now().millisecondsSinceEpoch}',
                );
                cubit.addFqs(
                  data: entity,
                );
              },
              text: 'ADD',
              backgroundColor: AppColors.blackColor,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}