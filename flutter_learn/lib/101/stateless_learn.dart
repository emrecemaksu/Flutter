import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless Learn')),
      body: Column(
        children: [
          const TitleWidget(
            title: 'Emre',
          ),
          const TitleWidget(
            title: 'Emre',
          ),
          const TitleWidget(
            title: 'Emre',
          ),
          const _CustomContainer(),
          _emptySizedBox(),
        ],
      ),
    );
  }

  SizedBox _emptySizedBox() => const SizedBox(width: 20,);
}

//Sayfaya özel Widgetları Private yap.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Emre',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
