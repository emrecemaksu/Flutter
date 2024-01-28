import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLearn extends StatelessWidget {
  TextLearn({super.key});
  final String name = 'Emre';
  String? other;
  //final ProjectText projectText = ProjectText();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextLearn')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ('Welcome $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: ProjectsColor.welcomeColor),
            ),
            const SizedBox(height: 20),
            Text(other ?? 'Empty Value'),
            Text(ProjectText.projectText.hello),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      fontSize: 16,
      color: Colors.lime.shade50,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline);
}

class ProjectsColor {
  static Color get welcomeColor => Colors.greenAccent;
}

//Eager Singleton kullanımı
class ProjectText {
  static ProjectText projectText = ProjectText._();
  final String hello = 'Merhaba';
  ProjectText._();
}
