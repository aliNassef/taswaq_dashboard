import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:taswaq_dashboard/features/login/domain/repo/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await loginRepo.login(
      email: email,
      password: password,
    );
    result.fold(
      (l) => emit(
        LoginFailure(errMessage: l.errMessage),
      ),
      (r) => emit(
        LoginSuccess(),
      ),
    );
  }
}
