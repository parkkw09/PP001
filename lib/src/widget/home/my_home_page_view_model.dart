import 'package:flutter/material.dart';

import '../../data/models/item.dart';
import '../../data/repositories/seoul_repository.dart';
import '../../util/log.dart';

class MyHomePageViewModel with ChangeNotifier {

  late final SeoulRepository _repository;
  List<Item> get items => _items;
  List<Item> _items = [];

  MyHomePageViewModel({required SeoulRepository repository}) {
    Log.d('MyHomePageViewModel');
    _repository = repository;
  }

  void getCulturalEventListData() async {
    _items = await _repository.getCulturalEventListData();
    Log.d('getCulturalEvenListData() items = [$items]');
  }
}