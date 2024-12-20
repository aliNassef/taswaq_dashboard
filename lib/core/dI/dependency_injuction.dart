import 'package:get_it/get_it.dart';
import 'package:taswaq_dashboard/features/home/data/source/home_remote_source.dart';
import 'package:taswaq_dashboard/features/home/domain/home_repo.dart';
import 'package:taswaq_dashboard/features/layout/data/layout_repo_impl.dart';
import 'package:taswaq_dashboard/features/layout/domain/repo/layout_repo.dart';
import '../../features/home/data/repo/home_repo_impl.dart';
import '../services/firebase_auth_service.dart';
import '../../features/fqs/data/repo/fqs_repo_impl.dart';
import '../../features/fqs/data/source/fqs_remote_source.dart';
import '../../features/fqs/domain/repo/fqs_repo.dart';
import '../../features/login/data/source/login_remote_source.dart';
import '../../features/login/domain/repo/login_repo.dart';
import '../../features/orders/data/source/order_remote_source.dart';
import '../../features/orders/domain/repo/order_repo.dart';
import '../../features/login/data/repo/login_repo_impl.dart';
import '../../features/orders/data/repo/order_repo_impl.dart';
import '../services/database_service.dart';
import '../services/firestore_database.dart';
import '../../features/privacy_policy/domain/repo/privacy_policy_repo.dart';
import '../../features/terms_condations/data/source/terms_remote_source.dart';
import '../../features/privacy_policy/data/repo/privacy_policy_repo_impl.dart';
import '../../features/privacy_policy/data/source/privacy_remote_source.dart';
import '../../features/terms_condations/data/repo/terms_condation_repo_impl.dart';
import '../../features/terms_condations/domain/repo/terms_condation_repo.dart';

GetIt getIt = GetIt.instance;

setUpGetIt() async {
  getIt.registerSingleton<DatabaseService>(
    FirestoreDatabase(),
  );
  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(),
  );
  getIt.registerSingleton<LoginRemoteSource>(
    LoginRemoteSource(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );
  getIt.registerSingleton<LoginRepo>(
    LoginRepoImpl(
      loginRemoteSource: getIt<LoginRemoteSource>(),
    ),
  );
  getIt.registerSingleton<PrivacyRemoteSource>(
    PrivacyRemoteSource(
      databaseService: getIt<DatabaseService>(),
    ),
  );
  getIt.registerSingleton<PrivacyPolicyRepo>(
    PrivacyPolicyRepoImpl(
      api: getIt<PrivacyRemoteSource>(),
    ),
  );

  getIt.registerSingleton<TermsRemoteSource>(
    TermsRemoteSource(
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<TermsCondationRepo>(
    TermsCondationRepoImpl(
      api: getIt<TermsRemoteSource>(),
    ),
  );

  getIt.registerSingleton<FqsRemoteSource>(
    FqsRemoteSource(
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<FqsRepo>(
    FqsRepoImpl(
      api: getIt<FqsRemoteSource>(),
    ),
  );
  getIt.registerSingleton<OrderRemoteSource>(
    OrderRemoteSource(
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<OrderRepo>(
    OrderRepoImpl(
      orderRemoteSource: getIt<OrderRemoteSource>(),
    ),
  );
  getIt.registerSingleton<LayoutRepo>(
    LayoutRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );

  getIt.registerSingleton<HomeRemoteSource>(
    HomeRemoteSource(
      databaseService: getIt<DatabaseService>(),
    ),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      homeRemoteSource: getIt<HomeRemoteSource>(),
    ),
  );
}
