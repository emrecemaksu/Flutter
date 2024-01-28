import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title = 'Pelarn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        //Sayfada otomatik olarak back butonu gelmesin diye
        automaticallyImplyLeading: false,
        actionsIconTheme:
            const IconThemeData(color: Colors.amberAccent, size: 40),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
