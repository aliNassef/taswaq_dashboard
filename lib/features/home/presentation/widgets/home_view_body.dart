import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/utils/app_images.dart';
import '../manger/cubit/home_cubit.dart';
import 'home_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getNumOfUsers();
    context.read<HomeCubit>().getNumOfProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        color: Colors.white,
        child: Wrap(
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (prev, curr) =>
                  curr is HomeNumOfUserSuccess ||
                  curr is HomeNumOfUserFailure ||
                  curr is HomeNumOfUserLoading,
              builder: (context, state) {
                if (state is HomeNumOfUserSuccess) {
                  return HomeItem(
                    count: state.numOfUsers.toString(),
                    image: AppImages.users,
                    title: 'Users',
                  );
                } else {
                  return const Skeletonizer(
                    enabled: true,
                    child: HomeItem(
                      count: '0',
                      image: AppImages.users,
                      title: 'Users',
                    ),
                  );
                }
              },
            ),
            HomeItem(
              count: 100.toString(),
              image: AppImages.money,
              title: 'Payments',
            ),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (prev, curr) =>
                  curr is HomeNumOfProductSuccess ||
                  curr is HomeNumOfProductFailure ||
                  curr is HomeNumOfProductLoading,
              builder: (context, state) {
                if (state is HomeNumOfProductSuccess) {
                  return HomeItem(
                    count: state.numberOfProducts.toString(),
                    image: AppImages.users,
                    title: 'Products',
                  );
                } else {
                  return const Skeletonizer(
                    enabled: true,
                    child: HomeItem(
                      count: '100',
                      image: AppImages.users,
                      title: 'Products',
                    ),
                  );
                }
              },
            ),
            HomeItem(
              count: 100.toString(),
              image: AppImages.orders,
              title: 'Orders',
            ),
          ],
        ),
      ),
    );
  }
}
