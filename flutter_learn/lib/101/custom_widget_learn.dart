import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                //MediaQuery ile ekran withini aliriz.
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  onPressed: () {},
                  title: _title,
                ),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomFoodButton(onPressed: () {
                
              }, title: "Pizza"),
            )
          ],
        ));
  }
}

mixin _ColorUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget with _ColorUtility, PaddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: redColor, shape: const StadiumBorder()),
      child: Padding(
        padding: paddingSettings,
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

mixin PaddingUtility {
  final EdgeInsets paddingSettings = const EdgeInsets.all(8.0);
  final EdgeInsets paddingSettings2x = const EdgeInsets.all(16.0);
}
