
import 'package:pp_001/src/data/models/seoul_cultural_event_info.dart';
import 'package:pp_001/src/util/utils.dart';

import '../../util/log.dart';
import '../models/item.dart';
import '../source/local/seoul_local.dart';
import '../source/remote/seoul_api.dart';
import 'seoul_repository.dart';

class SeoulRepositoryImpl implements SeoulRepository {

  late final SeoulLocal _data;
  late final SeoulApi _remote;

  SeoulRepositoryImpl({required SeoulLocal local, required SeoulApi remote}) {
    Log.d('SeoulRepository()');
    _data = local;
    _remote = remote;
  }

  @override
  Future<List<Item>> getCulturalEventListData() async {
    Log.d('getCulturalEventListData()');
    SeoulCulturalEventInfo? info = await _remote.getCulturalEventInfo(startPage: 1, endPage: 1);
    if (info != null) {
      _data.cachedCulturalList = convertCulturalEventData(info.culturalEventInfo?.row);
      return _data.cachedCulturalList;
    }
    return [];
  }

  @override
  Future<List<String>> getValueListData(String settingKey) {
    return Future(() => []);
  }

  @override
  Future<void> loadData() {
    return Future(() => null);
  }

  @override
  Future<void> saveData(List<Item> items) {
    return Future(() => null);
  }

  @override
  Future<void> updateData(String key, String value) {
    return Future(() => null);
  }

  @override
  Future<void> updateDataByServerEnvironment(String environmentString
  ) {
    return Future(() => null);
  }
}