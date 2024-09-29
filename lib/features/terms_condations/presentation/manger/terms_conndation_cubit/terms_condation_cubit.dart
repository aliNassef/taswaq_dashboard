import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taswaq_dashboard/features/terms_condations/domain/repo/terms_condation_repo.dart';

import '../../../../../core/services/end_ponits.dart';
import 'terms_condation_state.dart';

class TermsCondationCubit extends Cubit<TermsCondationState> {
  TermsCondationCubit(this._termsCondationRepo)
      : super(TermsCondationInitial());
  final TermsCondationRepo _termsCondationRepo;
  TextEditingController terms1 = TextEditingController();
  TextEditingController terms2 = TextEditingController();
  TextEditingController terms3 = TextEditingController();
  TextEditingController terms4 = TextEditingController();
  TextEditingController terms5 = TextEditingController();
  TextEditingController terms6 = TextEditingController();
  TextEditingController terms7 = TextEditingController();
  TextEditingController terms8 = TextEditingController();
  TextEditingController terms9 = TextEditingController();
  TextEditingController terms10 = TextEditingController();

  void getTermsCondation() async {
    emit(TermsCondationGetDataLoading());
    final data = await _termsCondationRepo.getData();
    data.fold(
        (error) => emit(
              TermsCondationGetDataFailure(errMessage: error.errMessage),
            ), (data) {
      terms1.text = data.terms1;
      terms2.text = data.terms2;
      terms3.text = data.terms3;
      terms4.text = data.terms4;
      terms5.text = data.terms5;
      terms6.text = data.terms6;
      terms7.text = data.terms7;
      terms8.text = data.terms8;
      terms9.text = data.terms9;
      terms10.text = data.terms10;
      emit(
        TermsCondationGetDataSuccess(entity: data),
      );
    });
  }

  void updateTermsCondation() async {
    try {
      await _termsCondationRepo.addData(data: {
        ApiKey.terms1: terms1.text,
        ApiKey.terms2: terms2.text,
        ApiKey.terms3: terms3.text,
        ApiKey.terms4: terms4.text,
        ApiKey.terms5: terms5.text,
        ApiKey.terms6: terms6.text,
        ApiKey.terms7: terms7.text,
        ApiKey.terms8: terms8.text,
        ApiKey.terms9: terms9.text,
        ApiKey.terms10: terms10.text,
      });
      emit(TermsCondationUpdateDataSuccess());
    } catch (e) {
      emit(TermsCondationUpdateDataFailure(errMessage: e.toString()));
    }
  }
}
