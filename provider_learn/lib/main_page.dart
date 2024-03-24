import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/ressource/give_my_name.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(context.read<GiveMyName>().userName.toString())),
    );
  }
}
