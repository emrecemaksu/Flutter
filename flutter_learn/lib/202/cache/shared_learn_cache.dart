import 'package:flutter/material.dart';
import 'package:flutter_learn/202/cache/shared_manager.dart';
import 'package:flutter_learn/202/cache/user_model.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  @override
  //Future olursa çizim hep ayakta olur. O yüzden init Future olmaz.
  void initState() {
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _prefInitilaze();
  }

  void _prefInitilaze() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValue();
  }

  Future<void> getDefaultValue() async {
    /*
    final prefs = await SharedPreferences.getInstance();
    final int? counter = prefs.getInt('counter');
    */
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  int _currentValue = 0;
  late final SharedManager _manager;
  late List<User> userItems = [];

  void _onChangeValue(String value) {
    final value0 = int.tryParse(value);
    if (value0 != null) {
      setState(() {
        _currentValue = value0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_currentValue'),
        actions: [
          isLoading
              ? CircularProgressIndicator(
                  color: Theme.of(context).scaffoldBackgroundColor,
                )
              : const SizedBox.shrink(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _removeFloatingAction(),
          const SizedBox(
            width: 10,
          ),
          _addFloatingAction(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
          const Expanded(child: SizedBox()
              //_UserListView(),
              )
        ],
      ),
    );
  }

  FloatingActionButton _addFloatingAction() {
    return FloatingActionButton(
      child: const Icon(Icons.save_outlined),
      onPressed: () async {
        changeLoading();
        await _manager.saveString(SharedKeys.counter, _currentValue.toString());
        /*
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
        */
        changeLoading();
      },
    );
  }

  FloatingActionButton _removeFloatingAction() {
    return FloatingActionButton(
      child: const Icon(Icons.remove_circle_outline),
      onPressed: () async {
        changeLoading();
        _manager.removeItem(SharedKeys.counter);
        /*
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove('counter');
        */
        changeLoading();
      },
    );
  }
}


class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('Emre1', 'Yazılımcı', 'androai.com'),
      User('Emre2', 'Yazılımcı', 'androai.com'),
      User('Emre3', 'Yazılımcı', 'androai.com'),
      User('Emre4', 'Yazılımcı', 'androai.com'),
    ];
  }
}

//!!!!!!!!!! Generic T kullanımı örnek
abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
