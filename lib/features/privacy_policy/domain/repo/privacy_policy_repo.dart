import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entity/privacy_entity.dart';

abstract class PrivacyPolicyRepo {
  Future<void> addData({required Map<String, dynamic> data});
  Future<Either<Failure, PrivacyEntity>> getData();
}
