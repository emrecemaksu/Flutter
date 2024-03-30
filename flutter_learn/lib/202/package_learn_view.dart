import 'package:flutter/material.dart';
import 'package:flutter_learn/202/package/launch_manager.dart';
import 'package:flutter_learn/202/package/loading_bar.dart';

class PackegeLearnView extends StatefulWidget {
  const PackegeLearnView({super.key});

  @override
  State<PackegeLearnView> createState() => _PackegeLearnViewState();
}

class _PackegeLearnViewState extends State<PackegeLearnView> with TickerProviderStateMixin, LaunchMixin {
  final Uri _url = Uri.parse('https://flutter.dev');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
          //Context içindeki kendi oluşturduğumuz temadan secondaryi aldı
          onPressed: () {
            launchUrl(_url);
          },
          child: const Icon(Icons.arrow_forward_rounded),
        ),
        body: const LoadingBar());
  }
}
