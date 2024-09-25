import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';

import 'add_or_cancel_update_button.dart';
import 'privacy_field_item.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02),
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
            const PrivacyFieldItem(title: 'Our Policy'),
            const PrivacyFieldItem(title: 'Information Collection'),
            const PrivacyFieldItem(title: 'Information Use'),
            const PrivacyFieldItem(title: 'Information Sharing'),
            const PrivacyFieldItem(title: 'Data Security'),
            const PrivacyFieldItem(title: 'User Rights'),
            const PrivacyFieldItem(title: 'Children\'s Privacy'),
            const PrivacyFieldItem(title: 'Updates to the Privacy Policy'),
            const AddorCancelUpdates(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
