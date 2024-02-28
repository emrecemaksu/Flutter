import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemosApp extends StatelessWidget {
  const NoteDemosApp({super.key});
  final String _buttontext = 'Create A Note';
  final String _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: PaddingItems().horizontalPadding,
          child: Column(
            children: [
              PngImage(name: ImageItems().appleWithBook),
              const _TitleWidget(),
              Padding(
                padding: PaddingItems().verticalPadding,
                child: const _SubTitleWidget(),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue)),
                child: SizedBox(
                    height: ButtonHeight().buttonHeight,
                    child: Center(
                        child: Text(
                      _buttontext,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ))),
              ),
              TextButton(
                onPressed: () {},
                child: Text(_importNotes),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}

class _SubTitleWidget extends StatelessWidget {
  // ignore: unused_element
  const _SubTitleWidget({this.textAlign = TextAlign.center});

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Add a note about anything your toughts on climate change, or your history essay and share it with the world',
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      textAlign: textAlign,
      maxLines: 3,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      ProjectTitle().title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}

class ProjectTitle {
  final String title = 'Create Your First Note';
}

class ButtonHeight {
  final double buttonHeight = 50;
}
