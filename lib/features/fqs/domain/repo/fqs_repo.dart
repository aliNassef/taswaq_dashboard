import '../entity/fqs_entity.dart';

abstract class FqsRepo {
  Future<void> addData({required FqsEntity data});
}
