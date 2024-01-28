import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
                child: CustomFoodButton(
              title: _title,
            )),
          ],
        ));
  }
}

mixin _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget with _ColorUtility {
  CustomFoodButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, shape: const StadiumBorder()),
      child: Center(
        child: Text(
          'Food',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PaddingUtility {
  final EdgeInsets paddingSettings = const EdgeInsets.all(8.0);
  final EdgeInsets paddingSettings2x = const EdgeInsets.all(16.0);
}
