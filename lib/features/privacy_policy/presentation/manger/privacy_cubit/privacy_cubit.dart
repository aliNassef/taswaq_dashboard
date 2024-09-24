import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:taswaq_dashboard/features/privacy_policy/domain/repo/privacy_policy_repo.dart';

part 'privacy_state.dart';

class PrivacyCubit extends Cubit<PrivacyState> {
  PrivacyCubit(this.privacyPolicyRepo) : super(PrivacyInitial());
  final PrivacyPolicyRepo privacyPolicyRepo;
  Future<void> addData({required Map<String, dynamic> data}) async {
    try {
      await privacyPolicyRepo.addData(data: data);
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
