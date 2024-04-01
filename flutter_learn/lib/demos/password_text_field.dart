import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obsecureCharacter = '*';
  final _textEditingController = TextEditingController();
  bool _isVisible = true;
  void _changeLoading() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isVisible,
      obscuringCharacter: _obsecureCharacter,
      decoration: InputDecoration(
          //suffixIcon: Icon(Icons.password_outlined),
          suffix: _onVisibilityIcon(),
          border: const UnderlineInputBorder(),
          hintText: 'Password'),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
      //icon: _isVisible ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off_outlined),
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility),
        secondChild: const Icon(Icons.visibility_off_outlined),
        crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        //Duration için bütün projede kullanılacağı için Duration sınıfa yap ordan getir.
        duration: const Duration(milliseconds: 500),
      ),
      onPressed: () {
        _changeLoading();
      },
    );
  }
}
