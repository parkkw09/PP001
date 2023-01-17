import 'package:shared_preferences/shared_preferences.dart';

import '../../../util/log.dart';
import '../../models/item.dart';

class SeoulLocal {
  List<Item> cachedCulturalList = [];

  SeoulLocal() {
    Log.d('SeoulLocal()');
  }

  Future<String> getValue(String key) async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String value = pref.getString(key) ?? '';
      return value;
    } on Exception catch (e) {
      Log.e('exception = ${e.toString()}');
      return '';
    }
  }

  void updateValue(String key, String value) async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.setString(key, value);
    } on Exception catch (e) {
      Log.e('exception = ${e.toString()}');
    }
  }
}