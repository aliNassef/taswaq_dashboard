part of 'fqs_cubit.dart';

@immutable
sealed class FqsState {}

final class FqsInitial extends FqsState {}

final class FqsSuccess extends FqsState {}

final class FqsFailure extends FqsState {
  final String errMessage;

  FqsFailure({required this.errMessage});
}
