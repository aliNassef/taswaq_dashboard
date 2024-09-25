import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';
import 'package:taswaq_dashboard/features/privacy_policy/presentation/manger/privacy_cubit/privacy_cubit.dart';

import '../../../../core/shared/functions/toast_dialog.dart';
import 'add_or_cancel_update_button.dart';
import 'privacy_field_item.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PrivacyCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02),
      child: BlocListener<PrivacyCubit, PrivacyState>(
        listener: (context, state) {
          if (state is PrivacyAddedSuccess) {
            showToast(text: 'Privacy policy added successfully');
          }
          if (state is PrivacyAddedFailure) {
            showToast(text: state.errMessage);
          }
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              const Text(
                'Add Privacy Policy Content',
                style: AppStyles.textStyle18B,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              PrivacyFieldItem(
                title: 'Our Policy',
                controller: cubit.ourPolicy,
              ),
              PrivacyFieldItem(
                title: 'Information Collection',
                controller: cubit.collectionInfo,
              ),
              PrivacyFieldItem(
                title: 'Information Use',
                controller: cubit.useInfo,
              ),
              PrivacyFieldItem(
                title: 'Information Sharing',
                controller: cubit.sharingInfo,
              ),
              PrivacyFieldItem(
                title: 'Data Security',
                controller: cubit.dataSecurity,
              ),
              PrivacyFieldItem(
                title: 'User Rights',
                controller: cubit.userRights,
              ),
              PrivacyFieldItem(
                title: 'Children\'s Privacy',
                controller: cubit.childrenPrivacy,
              ),
              PrivacyFieldItem(
                title: 'Updates to the Privacy Policy',
                controller: cubit.updatesPrivacy,
              ),
              const AddorCancelUpdates(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
