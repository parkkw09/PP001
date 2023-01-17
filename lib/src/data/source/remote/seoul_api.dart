import 'package:pp_001/src/data/models/seoul_cultural_event_info.dart';

import '../../../util/log.dart';
import '../../../util/network.dart';

class SeoulApi {

  final String apiUrl = 'http://openapi.seoul.go.kr:8088';
  final String dataType = 'json';
  final String culturalEventInfo = 'culturalEventInfo';
  final String key = '7a4f58414a7061723736646a57694a';

  Network? network;

  SeoulApi({required Network networkEngine}) {
    Log.d('SeoulApi()');
    network = networkEngine;
  }

  Future<SeoulCulturalEventInfo?> getCulturalEventInfo({int startPage = 1, int endPage = 5}) async {
    var getServiceKeyCommand = '$apiUrl/$key/$dataType/$culturalEventInfo/$startPage/$endPage/';
    var responseData = await network?.requestCommand2(getServiceKeyCommand) ?? {};
    if (responseData.isNotEmpty) {
      SeoulCulturalEventInfo info = SeoulCulturalEventInfo.fromJson(responseData);
      var result = info.culturalEventInfo?.result;
      if (result != null) {
        if (_checkResultCode(result.code ?? 'UNKNOWN', result.message ?? 'UNKNOWN MESSAGE')) {
          return info;
        }
      }
    }
    return null;
  }

  bool _checkResultCode(String code, String message) {
    switch (code) {
      case 'INFO-000':
        return true;
      default:
        Log.e('Check Result Fail [$code][$message]');
        return false;
    }
  }
}