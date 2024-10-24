import 'package:dartz/dartz.dart';
import 'package:taswaq_dashboard/core/errors/failure.dart';
import 'package:taswaq_dashboard/features/login/domain/entity/user_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });
}
