import 'package:taswaq_dashboard/core/errors/exceptions.dart';

import '../../domain/repo/privacy_policy_repo.dart';
import '../source/privacy_remote_source.dart';

class PrivacyPolicyRepoImpl extends PrivacyPolicyRepo {
  final PrivacyRemoteSource api;

  PrivacyPolicyRepoImpl({required this.api});
  @override
  Future<void> addData({required Map<String, dynamic> data}) async {
    try {
      await api.addData(data: data);
    } catch (e) {
      throw CustomException(
        errorMessage: e.toString(),
      );
    }
  }
}
