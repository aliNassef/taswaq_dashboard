import '../model/terms_model.dart';

import '../../../../core/services/database_service.dart';
import '../../../../core/services/end_ponits.dart';

class TermsRemoteSource {
  final DatabaseService databaseService;

  const TermsRemoteSource({required this.databaseService});
  Future<void> addData({required Map<String, dynamic> data}) async {
    return await databaseService.addData(
      path: EndPoints.termsCondations,
      data: data,
      docId: '1',
    );
  }

  Future<TermsModel> getData() async {
    final response = await databaseService.getData(
        path: EndPoints.termsCondations, docuementId: '1');
    return TermsModel.fromMap(response);
  }
}
