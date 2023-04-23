import 'package:dataexmp/data/dio.dart';
import 'package:dataexmp/data/shared_pref.dart';
import 'package:dataexmp/functions/utils.dart';

Future<Map<String, dynamic>> getInternalData() async {
  await sharedPref.getData();
  Map<String, dynamic> map = sharedPref.data;
  return map;
}

Future<Map<String, dynamic>> getExternalData() async {
  Map<String, dynamic> map = await getHttp();
  String jsonString = fromMapToString(map: map);
  await saveNewInternalData(externalDataString: jsonString);
  return map;
}

Future<void> saveNewInternalData({required String externalDataString}) async {
  sharedPref.saveInternalData(jsonString: externalDataString);
}
