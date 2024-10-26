import '../../../../core/services/database_service.dart';
import '../../../../core/services/end_ponits.dart';
import '../../domain/entity/fqs_entity.dart';

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
