import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, int>> getNumOfUsers();
  Future<Either<Failure, int>> getNumOfProducts();
}
