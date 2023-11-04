import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _mailController;

  @override
  void initState() {
    super.initState();
    _mailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pizza Restaurant',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Hoş Geldiniz!'),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _mailController,
                  onSubmitted: (value) {
                    setState(() {
                      _mailController.text = value;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(),
                      hintText: 'Geçerli bir Mail girin.',
                      labelText: 'E-Mail'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                        labelText: 'Şifre',
                        hintText: 'Şifrenizi Girin.')),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Giriş Yap',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 12.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Kayıt Ol',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                child: const Text('Şifreni mi unuttun?'),
                onPressed: () {},
              ),
              Text(_mailController.text),
            ]),
      ),
    );
  }
}
