import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/shared/functions/toast_dialog.dart';
import '../../../../core/shared/widgets/default_app_button.dart';
import '../../../../core/utils/app_colors.dart';
import 'terms_condation_field_item.dart';

import '../../../../core/utils/app_styles.dart';
import '../manger/terms_conndation_cubit/terms_condation_cubit.dart';
import '../manger/terms_conndation_cubit/terms_condation_state.dart';

class TermsCondationViewBody extends StatelessWidget {
  const TermsCondationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TermsCondationCubit>();
    return BlocConsumer<TermsCondationCubit, TermsCondationState>(
      listenWhen: (previous, current) =>
          current is TermsCondationUpdateDataSuccess ||
          current is TermsCondationUpdateDataFailure,
      buildWhen: (previous, current) =>
          current is TermsCondationGetDataSuccess ||
          current is TermsCondationGetDataFailure ||
          current is TermsCondationGetDataLoading,
      listener: (context, state) {
        if (state is TermsCondationUpdateDataSuccess) {
          showToast(text: 'Terms and Conditions updated successfully');
        }
        if (state is TermsCondationUpdateDataFailure) {
          showToast(text: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is TermsCondationGetDataLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is TermsCondationGetDataFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                ),
                const Text(
                  'Add Terms and Conditions',
                  style: AppStyles.textStyle18B,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                ),
                TermsCondationFieldItem(
                  title: 'Terms & Conditions',
                  controller: cubit.terms1,
                ),
                TermsCondationFieldItem(
                  title: '1. Account Registration:',
                  controller: cubit.terms2,
                ),
                TermsCondationFieldItem(
                  title: '2. Product Information and Pricing:',
                  controller: cubit.terms3,
                ),
                TermsCondationFieldItem(
                  title: '3. Order Placement and Fulfillment:',
                  controller: cubit.terms4,
                ),
                TermsCondationFieldItem(
                  title: '4. Payment:',
                  controller: cubit.terms5,
                ),
                TermsCondationFieldItem(
                  title: '5. Shipping and Delivery:',
                  controller: cubit.terms6,
                ),
                TermsCondationFieldItem(
                  title: '6. Returns and Refunds:',
                  controller: cubit.terms7,
                ),
                TermsCondationFieldItem(
                  title: '7. Intellectual Property:',
                  controller: cubit.terms8,
                ),
                TermsCondationFieldItem(
                  title: '8. User Conduct:',
                  controller: cubit.terms9,
                ),
                TermsCondationFieldItem(
                  title: '9. Limitation of Liability:',
                  controller: cubit.terms10,
                ),
                DefaultAppButton(
                  backgroundColor: AppColors.blackColor,
                  textColor: Colors.white,
                  onPressed: () {
                    cubit.updateTermsCondation();
                  },
                  text: 'Update',
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
