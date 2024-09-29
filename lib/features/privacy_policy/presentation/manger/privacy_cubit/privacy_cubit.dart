import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../domain/repo/privacy_policy_repo.dart';

import '../../../domain/entity/privacy_entity.dart';

part 'privacy_state.dart';

class PrivacyCubit extends Cubit<PrivacyState> {
  PrivacyCubit(this.privacyPolicyRepo) : super(PrivacyInitial());
  final PrivacyPolicyRepo privacyPolicyRepo;
  TextEditingController ourPolicy = TextEditingController();
  TextEditingController collectionInfo = TextEditingController();
  TextEditingController useInfo = TextEditingController();
  TextEditingController sharingInfo = TextEditingController();
  TextEditingController dataSecurity = TextEditingController();
  TextEditingController userRights = TextEditingController();
  TextEditingController childrenPrivacy = TextEditingController();
  TextEditingController updatesPrivacy = TextEditingController();
  void dispose() {
    ourPolicy.dispose();
    collectionInfo.dispose();
    useInfo.dispose();
    sharingInfo.dispose();
    dataSecurity.dispose();
    userRights.dispose();
    childrenPrivacy.dispose();
    updatesPrivacy.dispose();
  }

  Future<void> addData({required PrivacyEntity data}) async {
    try {
      await privacyPolicyRepo.addData(data: data.toMap());
      emit(PrivacyAddedSuccess());
    } catch (e) {
      emit(
        PrivacyAddedFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> getData() async {
    emit(PrivacyGetLoading());
    final data = await privacyPolicyRepo.getData();
    data.fold(
        (error) => emit(
              PrivacyGetFailure(errMessage: error.errMessage),
            ), (data) {
      ourPolicy.text = data.ourPolicy ?? '';
      collectionInfo.text = data.collectionInfo ?? '';
      useInfo.text = data.useInfo ?? '';
      sharingInfo.text = data.sharingInfo ?? '';
      dataSecurity.text = data.dataSecurity ?? '';
      userRights.text = data.userRights ?? '';
      childrenPrivacy.text = data.childrenPrivacy ?? '';
      updatesPrivacy.text = data.updatesPrivacy ?? '';
      emit(
        PrivacyGetSuccess(),
      );
    });
  }
}
