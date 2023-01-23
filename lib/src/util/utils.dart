import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

import '../data/models/item.dart';
import '../data/models/seoul_cultural_event_info.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }

  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

void showToast(BuildContext context, String message) {
  CherryToast.success(
    title: Text(message),
    toastPosition: Position.bottom,
    autoDismiss: true,
  ).show(context);
}

List<Item> convertCulturalEventData(List<CulturalEventInfoData>? original) {
  if (original != null) {
    return original.map((e) => Item(
      codeName: e.codeName ?? '',
      guName: e.guName ?? '',
      title: e.title ?? '',
      date: e.date ?? '',
      place: e.place ?? '',
      orgName: e.orgName ?? '',
      useTarget: e.useTarget ?? '',
      useFee: e.useFee ?? '',
      player: e.player ?? '',
      program: e.program ?? '',
      etcDescription: e.etcDescription ?? '',
      orgLink: e.orgLink ?? '',
      mainImage: e.mainImage ?? '',
      registrationDate: e.registrationDate ?? '',
      ticket: e.ticket ?? '',
      startDate: e.startDate ?? '',
      endDate: e.endDate ?? '',
      themeCode: e.themeCode ?? ''
    )).toList();
  }
  return [];
}