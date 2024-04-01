import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _key,
        onChanged: () {
          if (kDebugMode) {
            print('sdasd');
          }
        },
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            DropdownButtonFormField<String>(
              validator: FormFieldValidator().isNotEmpty,
              onChanged: (value) {},
              items: const [
                DropdownMenuItem(
                  value: 'A1',
                  child: Text('A1'),
                ),
                DropdownMenuItem(
                  value: 'A2',
                  child: Text('A2'),
                ),
                DropdownMenuItem(
                  value: 'A3',
                  child: Text('A3'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if (_key.currentState?.validate() ?? false) {
                  if (kDebugMode) {
                    print('okey');
                  }
                }
              },
              child: const Text('Save'),
            )
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmptyMessage;
  }
}

class ValidatorMessage {
  static const String _notEmptyMessage = 'Boş Geçilemez.';
}
