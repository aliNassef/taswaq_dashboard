import 'package:dartz/dartz.dart';

import 'package:taswaq_dashboard/core/errors/failure.dart';
import 'package:taswaq_dashboard/features/login/data/source/login_remote_source.dart';

import 'package:taswaq_dashboard/features/login/domain/entity/user_entity.dart';

import '../../domain/repo/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  final LoginRemoteSource loginRemoteSource;

  LoginRepoImpl({required this.loginRemoteSource});
  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final user =
          await loginRemoteSource.login(email: email, password: password);
      return Right(user.toEntity());
    } catch (e) {
      return Left(Failure(errMessage: e.toString()));
    }
  }
}
