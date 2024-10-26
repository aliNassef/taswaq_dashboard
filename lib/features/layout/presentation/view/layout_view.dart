import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taswaq_dashboard/core/dI/dependency_injuction.dart';
import 'package:taswaq_dashboard/features/layout/domain/repo/layout_repo.dart';
import 'package:taswaq_dashboard/features/login/presentation/views/login_view.dart';
import '../../../../core/shared/widgets/app_logo.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../fqs/presentation/view/fqs_view.dart';
import '../../../home/presentation/view/home_view.dart';
import '../manger/cubit/layout_state.dart';
import '../widgets/admin_item.dart';
import '../../../orders/presentation/view/order_view.dart';
import '../../../privacy_policy/presentation/view/privacy_policy_view.dart';
import '../../../terms_condations/presentation/view/terms_condation_view.dart';
import '../manger/cubit/layout_cubit.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({
    super.key,
  });
  static const String routeName = 'layout_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LayoutCubit(getIt<LayoutRepo>()),
        child: Builder(builder: (context) {
          return BlocBuilder<LayoutCubit, LayoutState>(
            buildWhen: (previous, current) =>
                current is ChangelayoutStateSuccess,
            builder: (context, state) {
              final cubit = context.read<LayoutCubit>();
              return Row(
                children: [
                  Container(
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
                          backgroundImage:
                              AssetImage('assets/images/admin.jpg'),
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
                        BlocListener<LayoutCubit, LayoutState>(
                          listener: (context, state) {
                            if (state is LayoutStateLogOutSuccess) {
                              Navigator.pushReplacementNamed(
                                  context, LoginView.routeName);
                            }
                          },
                          child: TextButton(
                            onPressed: () {
                              cubit.logout();
                            },
                            child: const Text('Logout'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    color: AppColors.primaryColor,
                    thickness: 1,
                  ),
                  layoutBody(cubit.currentIndex),
                ],
              );
            },
          );
        }),
      ),
    );
  }

  Widget layoutBody(int index) {
    switch (index) {
      case 1:
        return const HomeView();
      case 2:
        return const OrderView();
      case 3:
        return const FqsView();
      case 4:
        return const TermsCondationView();
      case 5:
        return const PrivacyPolicyView();
    }
    return const Placeholder();
  }
}
