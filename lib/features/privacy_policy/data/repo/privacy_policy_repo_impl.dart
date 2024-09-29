import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entity/privacy_entity.dart';

import '../../domain/repo/privacy_policy_repo.dart';
import '../source/privacy_remote_source.dart';

class PrivacyPolicyRepoImpl extends PrivacyPolicyRepo {
  final PrivacyRemoteSource api;

  PrivacyPolicyRepoImpl({required this.api});
  @override
  Future<void> addData({required Map<String, dynamic> data}) async {
    try {
      await api.addData(data: data);
    } catch (e) {
      throw CustomException(
        errorMessage: e.toString(),
      );
    }
  }

  @override
  Future<Either<Failure, PrivacyEntity>> getData() async {
    try {
      final privacyData = await api.getData();
      return Right(privacyData);
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }
}
