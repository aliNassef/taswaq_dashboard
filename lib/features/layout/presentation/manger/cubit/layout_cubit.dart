import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/layout/presentation/manger/cubit/layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutStateIntial());

  int currentIndex = 1;
  void changePage(int index) {
    currentIndex = index;
    emit(
      ChangelayoutStateSuccess(),
    );
  }
}
