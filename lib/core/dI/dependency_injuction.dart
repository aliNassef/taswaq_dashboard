import 'package:get_it/get_it.dart';
import 'package:taswaq_dashboard/core/services/database_service.dart';
import 'package:taswaq_dashboard/core/services/firestore_database.dart';
import 'package:taswaq_dashboard/features/privacy_policy/domain/repo/privacy_policy_repo.dart';
import 'package:taswaq_dashboard/features/terms_condations/data/source/terms_remote_source.dart';

import '../../features/privacy_policy/data/repo/privacy_policy_repo_impl.dart';
import '../../features/privacy_policy/data/source/privacy_remote_source.dart';
import '../../features/terms_condations/data/repo/terms_condation_repo_impl.dart';
import '../../features/terms_condations/domain/repo/terms_condation_repo.dart';

GetIt getIt = GetIt.instance;

setUpGetIt() async {
  getIt.registerSingleton<DatabaseService>(
    FirestoreDatabase(),
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
}
