import 'package:get_it/get_it.dart';
import 'package:pp_001/src/data/module/get_it_data_modules.dart';
import 'package:pp_001/src/widget/home/my_home_page_view_model.dart';

void setupWidgetModules() {
  GetIt.instance.registerFactory<MyHomePageViewModel>(() =>
    MyHomePageViewModel(repository: getSeoulRepositoryInstance())
  );
}

MyHomePageViewModel getMyHomePageViewModelInstance() {
  return GetIt.instance.get<MyHomePageViewModel>();
}