import 'package:taswaq_dashboard/core/services/firebase_auth_service.dart';
import '../domain/repo/layout_repo.dart';

class LayoutRepoImpl extends LayoutRepo {
  final FirebaseAuthService firebaseAuthService;

  LayoutRepoImpl({required this.firebaseAuthService});
  @override
  Future<void> logout() async {
    await firebaseAuthService.signOut();
  }
}
