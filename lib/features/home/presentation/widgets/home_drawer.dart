import 'package:flutter/material.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';

import '../../../../core/utils/app_styles.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
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
              Navigator.pop(context);
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
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
