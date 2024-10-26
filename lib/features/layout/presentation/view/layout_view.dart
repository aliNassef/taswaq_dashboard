import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taswaq_dashboard/core/shared/widgets/app_logo.dart';
import 'package:taswaq_dashboard/core/utils/app_colors.dart';
import 'package:taswaq_dashboard/core/utils/app_images.dart';
import 'package:taswaq_dashboard/core/utils/app_styles.dart';
import 'package:taswaq_dashboard/features/layout/presentation/manger/cubit/layout_state.dart';
import 'package:taswaq_dashboard/features/layout/presentation/widgets/admin_item.dart';

import '../manger/cubit/layout_cubit.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<LayoutCubit, LayoutState>(
          buildWhen: (previous, current) => current is ChangelayoutStateSuccess,
          builder: (context, state) {
            final cubit = context.read<LayoutCubit>();
            return Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width * 0.18,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppLogo(),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/admin.jpg'),
                    backgroundColor: AppColors.primaryColor,
                    radius: 60,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  const Text(
                    'Ali Nassef',
                    style: AppStyles.textStyle18B,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  Text(
                    'Admin',
                    style: AppStyles.textStyle12SB.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.03,
                  ),
                  AdminItem(
                    onTap: () {
                      cubit.changePage(1);
                    },
                    text: 'Home',
                    isSelected: cubit.currentIndex == 1,
                    icon: const Icon(
                      Icons.home,
                      color: AppColors.subprimaryColor4,
                    ),
                  ),
                  AdminItem(
                    onTap: () {
                      cubit.changePage(2);
                    },
                    text: 'Orders',
                    isSelected: cubit.currentIndex == 2,
                    icon: SvgPicture.asset(AppSvgs.orders),
                  ),
                  AdminItem(
                    onTap: () {
                      cubit.changePage(3);
                    },
                    text: 'Faqs',
                    isSelected: cubit.currentIndex == 3,
                    icon: SvgPicture.asset(AppSvgs.orders),
                  ),
                  AdminItem(
                    onTap: () {
                      cubit.changePage(4);
                    },
                    text: 'Terms & Conditions',
                    isSelected: cubit.currentIndex == 4,
                    icon: SvgPicture.asset(AppSvgs.termsAndCondations),
                  ),
                  AdminItem(
                    onTap: () {
                      cubit.changePage(5);
                    },
                    text: 'Privacy Policy',
                    isSelected: cubit.currentIndex == 5,
                    icon: SvgPicture.asset(AppSvgs.privacyPolicy),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
