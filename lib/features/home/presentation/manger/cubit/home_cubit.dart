import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:taswaq_dashboard/features/home/domain/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeInitial());
  final HomeRepo _homeRepo;

  Future<void> getNumOfUsers() async {
    emit(HomeNumOfUserLoading());
    final result = await _homeRepo.getNumOfUsers();
    result.fold(
      (l) => emit(HomeNumOfUserFailure(errMessage: l.errMessage)),
      (r) => emit(HomeNumOfUserSuccess(numOfUsers: r)),
    );
  }

  Future<void> getNumOfProducts() async {
    emit(HomeNumOfProductLoading());
    final result = await _homeRepo.getNumOfProducts();
    result.fold(
      (l) => emit(HomeNumOfProductFailure(errMessage: l.errMessage)),
      (r) => emit(HomeNumOfProductSuccess(numberOfProducts: r)),
    );
  }
}
