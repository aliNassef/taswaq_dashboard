import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../source/login_remote_source.dart';

import '../../domain/entity/user_entity.dart';

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
