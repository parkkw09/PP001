import 'package:get_it/get_it.dart';

import '../../util/network.dart';
import '../repositories/seoul_repository.dart';
import '../repositories/seoul_repository_impl.dart';
import '../source/local/seoul_local.dart';
import '../source/remote/seoul_api.dart';

void setupDataModules() {
  GetIt.instance.registerSingletonAsync<Network>(() async =>
      Network()
  );
  GetIt.instance.registerSingletonWithDependencies<SeoulApi>(() =>
      SeoulApi(networkEngine: GetIt.instance.get<Network>()),
      dependsOn: [Network]
  );
  GetIt.instance.registerSingletonAsync<SeoulLocal>(() async =>
      SeoulLocal()
  );
  GetIt.instance.registerSingletonWithDependencies<SeoulRepository>(() =>
      SeoulRepositoryImpl(
          local: GetIt.instance.get<SeoulLocal>(),
          remote: GetIt.instance.get<SeoulApi>()
      ),
      dependsOn: [SeoulLocal, SeoulApi]
  );
}

SeoulRepository getSeoulRepositoryInstance() {
  return GetIt.instance.get<SeoulRepository>();
}