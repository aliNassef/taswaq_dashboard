import 'package:taswaq_dashboard/core/services/database_service.dart';
import 'package:taswaq_dashboard/core/services/end_ponits.dart';
import 'package:taswaq_dashboard/features/fqs/domain/entity/fqs_entity.dart';

class FqsRemoteSource {
  final DatabaseService databaseService;

  FqsRemoteSource({required this.databaseService});
  Future<void> addData({required FqsEntity data}) async {
    await databaseService.addData(
      path: EndPoints.fqs,
      data: data.toMap(),
    );
  }
}
