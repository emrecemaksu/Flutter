import 'dart:math';

import 'package:dataexmp/data/notifiers/manage_notifiers.dart';
import 'package:dataexmp/functions/utils.dart';
import 'package:flutter/material.dart';

class DataModel {
  final String activity;
  final String type;
  final int participants;
  final String price;
  final String link;
  final String key;
  final String accessibility;
  DataModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  Future<void> reset() async {
    await setDataNotifier();
  }

  void logData() {
    String current = fromMapToString(map: dataMapCurrent);
    String internal = fromMapToString(map: dataMapInternal);
    String external = fromMapToString(map: dataMapExternal);
    debugPrint('Current $current');
    log('Internal: ($internal)' as num);
    log('External: $external' as num);
  }
}
