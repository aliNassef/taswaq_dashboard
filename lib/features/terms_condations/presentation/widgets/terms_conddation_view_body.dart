import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/features/terms_condations/presentation/widgets/terms_condation_field_item.dart';

import '../../../../core/utils/app_styles.dart';

class TermsCondationViewBody extends StatelessWidget {
  const TermsCondationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            const Text(
              'Add Terms and Conditions',
              style: AppStyles.textStyle18B,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            TermsCondationFieldItem(
              title: 'Terms & Conditions',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '1. Account Registration:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '2. Product Information and Pricing:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '3. Order Placement and Fulfillment:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '4. Payment:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '5. Shipping and Delivery:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '6. Returns and Refunds:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '7. Intellectual Property:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '8. User Conduct:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '9. Limitation of Liability:',
              controller: TextEditingController(),
            ),
            TermsCondationFieldItem(
              title: '9. Limitation of Liability:',
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
