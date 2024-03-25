import 'package:flutter/material.dart';
import 'package:flutter_learn/101/navigator_detail_learn.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index, bool isAdded) {
    setState(() {
      //selectedItems.add(index);
      isAdded ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () async {
                final response = await navigateToWidgetNormal<bool>(
                    context,
                    NavigateDetailLearn(
                      isOk: selectedItems.contains(index),
                    ));
                if (response is bool) {
                  addSelected(index, response);
                }
              },
              child: Placeholder(
                color: selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_circle_up_rounded),
        onPressed: () async {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: const RouteSettings(),
        ));
  }

  Future<T?> navigateToWidgetNormal<T>(context, Widget widget) {
    return Navigator.push<T>(
        context,
        MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: const RouteSettings(
              //didChangeDependencies le birlikte kullanılır.
              ),
        ));
  }
}
