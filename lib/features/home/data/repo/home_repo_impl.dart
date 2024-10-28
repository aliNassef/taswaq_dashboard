import 'package:dartz/dartz.dart';

import 'package:taswaq_dashboard/core/errors/failure.dart';
import 'package:taswaq_dashboard/features/home/data/source/home_remote_source.dart';

import '../../domain/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteSource homeRemoteSource;

  HomeRepoImpl({required this.homeRemoteSource});
  @override
  Future<Either<Failure, int>> getNumOfUsers() async {
    try {
      final numOfUsers = await homeRemoteSource.getUsers();
      return right(numOfUsers);
    } catch (e) {
      return left(Failure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> getNumOfProducts() async {
    try {
      final numOfProducts = await homeRemoteSource.getProducts();
      return right(numOfProducts);
    } catch (e) {
      return left(Failure(errMessage: e.toString()));
    }
  }
}
