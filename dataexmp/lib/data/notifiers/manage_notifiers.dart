import 'package:dataexmp/data/notifiers/notifiers.dart';
import 'package:dataexmp/functions/manage_data.dart';
import 'package:dataexmp/functions/utils.dart';

Map<String, dynamic> dataMapCurrent = {};
Map<String, dynamic> dataMapInternal = {};
Map<String, dynamic> dataMapExternal = {};

Future<void> setDataNotifier() async {
  if (isConnectedNotifier.value) {
    dataMapExternal = await getExternalData();
    dataMapInternal = dataMapExternal;
    dataMapCurrent = dataMapExternal;
  } else {
    dataMapInternal = await getInternalData();
    dataMapCurrent = dataMapInternal;
  }
  if (dataMapCurrent.isNotEmpty) {
    dataNotifier.value = fromMapDataModel(map: dataMapCurrent);
  }
}
