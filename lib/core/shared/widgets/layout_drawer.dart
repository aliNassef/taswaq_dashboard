import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taswaq_dashboard/features/fqs/presentation/view/fqs_view.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../../features/home/presentation/view/home_view.dart';
import '../../../features/terms_condations/presentation/view/terms_condation_view.dart';
import '../../utils/app_styles.dart';
import '../../../features/privacy_policy/presentation/view/privacy_policy_view.dart';

class LayoutDrawer extends StatelessWidget {
  const LayoutDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.2,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: const DrawerHeader(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: FittedBox(
                child: Text(
                  'Menu',
                  style: AppStyles.textStyle24B,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, HomeView.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                RepaintBoundary(child: SvgPicture.asset(AppSvgs.privacyPolicy)),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pushNamed(context, PrivacyPolicyView.routeName);
            },
          ),
          ListTile(
            leading: RepaintBoundary(
              child: SvgPicture.asset(AppSvgs.termsAndCondations),
            ),
            title: const Text('Terms & Conditions'),
            onTap: () {
              Navigator.pushNamed(context, TermsCondationView.routeName);
            },
          ),
          ListTile(
            leading: RepaintBoundary(
              child: SvgPicture.asset(AppSvgs.fqs),
            ),
            title: const Text('Fqs'),
            onTap: () {
              Navigator.pushNamed(context, FqsView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
