part of 'privacy_cubit.dart';

@immutable
sealed class PrivacyState {}

final class PrivacyInitial extends PrivacyState {}

final class PrivacyGetLoading extends PrivacyState {}

final class PrivacyGetFailure extends PrivacyState {
  final String errMessage;

  PrivacyGetFailure({required this.errMessage});
}

final class PrivacyGetSuccess extends PrivacyState {}

final class PrivacyAddedSuccess extends PrivacyState {}

final class PrivacyAddedFailure extends PrivacyState {
  final String errMessage;

  PrivacyAddedFailure({required this.errMessage});
}
