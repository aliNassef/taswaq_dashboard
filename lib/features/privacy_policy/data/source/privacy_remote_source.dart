import 'package:taswaq_dashboard/core/services/database_service.dart';
import 'package:taswaq_dashboard/core/services/end_ponits.dart';

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
}
