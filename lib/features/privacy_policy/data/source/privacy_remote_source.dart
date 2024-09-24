import 'package:taswaq_dashboard/core/services/database_service.dart';

class PrivacyRemoteSource {
  final DatabaseService databaseService;

  PrivacyRemoteSource({required this.databaseService});

  Future<void> addData({required Map<String, dynamic> data}) async {
    return await databaseService.addData(path: 'privacy-policy', data: data);
  }
}
