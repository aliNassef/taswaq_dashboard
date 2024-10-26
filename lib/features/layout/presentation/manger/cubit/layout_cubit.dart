import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/layout/domain/repo/layout_repo.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit(this.layoutRepo) : super(LayoutStateIntial());
  final LayoutRepo layoutRepo;
  int currentIndex = 1;
  void changePage(int index) {
    currentIndex = index;
    emit(
      ChangelayoutStateSuccess(
        index: currentIndex,
      ),
    );
  }
  Future<void> logout() async {
    await layoutRepo.logout();
    emit(LayoutStateLogOutSuccess());
  }
}
