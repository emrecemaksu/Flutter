import 'dart:convert';

import 'package:flutter_learn/202/cache/user_model.dart';

import '../shared_manager.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);
  Future<void> saveItems(List<User> items) async {
    // Compute JSON encode ve decode pahalı bir işlemdir.
    final items0 = items.map((element) => jsonEncode(element.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, items0);
  }

  List<User>? getItems() {
    final itemString = sharedManager.getStringItems(SharedKeys.users);
    if (itemString?.isNotEmpty ?? false) {
      return itemString!.map(
        (e) {
          final jsonObject = jsonDecode(e);
          if (jsonObject is Map<String, dynamic>) {
            return User.fromJson(jsonObject);
          }
          return User('Emre8', 'Aşçı', 'androai.com');
        },
      ).toList();
    }
    return null;
  }
}
