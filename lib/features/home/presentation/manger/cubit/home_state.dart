part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeNumOfUserLoading extends HomeState {}

final class HomeNumOfUserSuccess extends HomeState {
  final int numOfUsers;

  HomeNumOfUserSuccess({required this.numOfUsers});
}

final class HomeNumOfUserFailure extends HomeState {
  final String errMessage;

  HomeNumOfUserFailure({required this.errMessage});
}

final class HomeNumOfProductLoading extends HomeState {}

final class HomeNumOfProductSuccess extends HomeState {
  final int numberOfProducts;

  HomeNumOfProductSuccess({required this.numberOfProducts});
}

final class HomeNumOfProductFailure extends HomeState {
  final String errMessage;

  HomeNumOfProductFailure({required this.errMessage});
}
