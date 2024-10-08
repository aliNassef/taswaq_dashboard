import '../../../domain/entity/terms_entity.dart';

final class TermsCondationState {}

final class TermsCondationInitial extends TermsCondationState {}

final class TermsCondationGetDataLoading extends TermsCondationState {}

final class TermsCondationGetDataSuccess extends TermsCondationState {
  final TermsEntity entity;

  TermsCondationGetDataSuccess({required this.entity});
}

final class TermsCondationGetDataFailure extends TermsCondationState {
  final String errMessage;

  TermsCondationGetDataFailure({required this.errMessage});
}

final class TermsCondationUpdateDataSuccess extends TermsCondationState {}

final class TermsCondationUpdateDataFailure extends TermsCondationState {
  final String errMessage;

  TermsCondationUpdateDataFailure({required this.errMessage});
}
