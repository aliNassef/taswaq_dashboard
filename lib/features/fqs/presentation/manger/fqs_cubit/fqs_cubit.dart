import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../domain/repo/fqs_repo.dart';

import '../../../domain/entity/fqs_entity.dart';

part 'fqs_state.dart';

class FqsCubit extends Cubit<FqsState> {
  FqsCubit(this.fqsRepo) : super(FqsInitial());
  final FqsRepo fqsRepo;

  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  Future<void> addFqs({required FqsEntity data}) async {
    try {
      await fqsRepo.addData(data: data);
      questionController.clear();
      answerController.clear();
      emit(FqsSuccess());
    } catch (error) {
      emit(FqsFailure(errMessage: error.toString()));
    }
  }
}
