import 'package:taswaq_dashboard/core/services/database_service.dart';
import 'package:taswaq_dashboard/core/services/end_ponits.dart';
import 'package:taswaq_dashboard/features/privacy_policy/data/data/privacy_model.dart';

class PrivacyRemoteSource {
  final DatabaseService databaseService;

  PrivacyRemoteSource({required this.databaseService});

  Future<void> addData({
    required Map<String, dynamic> data,
  }) async {
    return await databaseService.addData(
      path: EndPoints.privacyPolicy,
      data: data,
      docId: '1',
    );
  }

  Future<PrivacyModel> getData() async {
    final response = await databaseService.getData(
      path: EndPoints.privacyPolicy,
      docuementId: '1',
    );
    return PrivacyModel.fromMap(response);
  }
}
