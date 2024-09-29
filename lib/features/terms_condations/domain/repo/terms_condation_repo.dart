import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

import '../entity/terms_entity.dart';

abstract class TermsCondationRepo {
  Future<void> addData({required Map<String, dynamic> data});
  Future<Either<Failure, TermsEntity>> getData();
}
