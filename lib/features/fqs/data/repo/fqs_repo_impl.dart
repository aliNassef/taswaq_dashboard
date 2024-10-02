import 'package:taswaq_dashboard/features/fqs/data/source/fqs_remote_source.dart';
import 'package:taswaq_dashboard/features/fqs/domain/entity/fqs_entity.dart';

import '../../../../core/errors/exceptions.dart';
import '../../domain/repo/fqs_repo.dart';

class FqsRepoImpl extends FqsRepo {
  final FqsRemoteSource api;

  FqsRepoImpl({required this.api});
  @override
  Future<void> addData({required FqsEntity data}) async {
    try {
      await api.addData(data: data);
    } catch (e) {
      throw CustomException(
        errorMessage: e.toString(),
      );
    }
  }
}
