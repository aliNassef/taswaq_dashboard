class LayoutState {}

final class LayoutStateIntial extends LayoutState {}

final class ChangelayoutStateSuccess extends LayoutState {
  final int index;

  ChangelayoutStateSuccess({required this.index});
}

final class ChangelayoutStateFailure extends LayoutState {}
