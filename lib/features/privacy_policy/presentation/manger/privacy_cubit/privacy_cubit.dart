import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:taswaq_dashboard/features/privacy_policy/domain/repo/privacy_policy_repo.dart';

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
      // await privacyPolicyRepo.addData(data: {
      //   // need to refactor to entity
      //   ApiKey.ourPolicy: ourPolicy.text,
      //   ApiKey.collectionInfo: collectionInfo.text,
      //   ApiKey.useInfo: useInfo.text,
      //   ApiKey.sharingInfo: sharingInfo.text,
      //   ApiKey.dataSecurity: dataSecurity.text,
      //   ApiKey.userRights: userRights.text,
      //   ApiKey.childrenPrivacy: childrenPrivacy.text,
      //   ApiKey.updatesPrivacy: updatesPrivacy.text,
      // });

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

  
}
