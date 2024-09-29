import 'dart:developer';

import 'package:dartz/dartz.dart';
import '../source/terms_remote_source.dart';
import '../../domain/entity/terms_entity.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/repo/terms_condation_repo.dart';

class TermsCondationRepoImpl extends TermsCondationRepo {
  final TermsRemoteSource api;

  TermsCondationRepoImpl({required this.api});
  @override
  Future<void> addData({required Map<String, dynamic> data}) async {
    try {
      await api.addData(data: data);
    } catch (e) {
      log(e.toString());
      throw CustomException(
        errorMessage: e.toString(),
      );
    }
  }

  @override
  Future<Either<Failure, TermsEntity>> getData() async {
    try {
      return Right(await api.getData());
    } catch (e) {
      log(e.toString());
      return Left(Failure(errMessage: e.toString()));
    }
  }
}
