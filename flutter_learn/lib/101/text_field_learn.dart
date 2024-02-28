import 'package:flutter/material.dart';
import 'package:flutter_learn/product/language/language_items.dart';
//import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Center(
          child: TextField(
            maxLength: 30,
            buildCounter: (context, {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            textInputAction: TextInputAction.next,
            //inputFormatters: [TextProjectInput()._formatter],
            decoration: _InputDecorations().emailInput,
          ),
        ),
        const TextField(
          maxLines: 2,
        ),
      ]),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10 * currentLength!.toDouble(),
      color: Colors.purple,
      //color: Colors.purple[100 * (currentLength ?? 0)],
    );
  }
}

/*
class TextProjectInput {
  final _formatter = TextInputFormatter.withFunction(
    (oldValue, newValue) {
      if (newValue.text == "a") {
        return oldValue;
      }
      return oldValue;
    },
  );
}
*/
class _InputDecorations {
  final emailInput = const InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(),
      labelText: LanguageItems.inputTypre);
}
