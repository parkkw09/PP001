import '../models/item.dart';

abstract class SeoulRepository {

  Future<List<Item>> getCulturalEventListData();
  Future<List<String>> getValueListData(String settingKey);
  Future<void> saveData(List<Item> items);
  Future<void> loadData();
  Future<void> updateData(String key, String value);
  Future<void> updateDataByServerEnvironment(String environmentString);
}