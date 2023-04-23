import 'package:dataexmp/models/data_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<DataModel> dataNotifier = ValueNotifier(DataModel(
  accessibility: '',
  activity: '',
  key: '',
  link: '',
  participants: 0,
  price: '',
  type: '',
));

ValueNotifier<bool> isConnectedNotifier = ValueNotifier(false);
