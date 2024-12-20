import '../../../../core/services/firebase_auth_service.dart';
import '../model/user_model.dart';

class LoginRemoteSource {
  final FirebaseAuthService firebaseAuthService;

  LoginRemoteSource({required this.firebaseAuthService});
  Future<UserModel> login(
      {required String email, required String password}) async {
    final user = await firebaseAuthService.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return UserModel.fromJson(user);
  }
}
