/*
//import 'package:base/bloc_counter/counter_page.dart';
//import 'package:base/bloc_counter/cubit/counter_cubit.dart';
//import 'package:base/brewery_page.dart';
//import 'package:base/login_page.dart';
import 'package:base/posts_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      /*
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const CounterPage(),
      ),
      */
      home: PostPage(),
    );
  }
}

*/
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp Rezervasyon Örneği'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _sendWhatsAppMessage,
            child: const Text('Rezervasyon Yap'),
          ),
        ),
      ),
    );
  }

  void _sendWhatsAppMessage() async {
    const phoneNumber = '+905546706944'; // Hedef telefon numarası (Uluslararası format)
    const message = 'Merhaba, restoranınızda rezervasyon yapmak istiyorum.'; // Göndermek istediğiniz mesaj

    // WhatsApp URL'sini platforma göre ayarlayın
    var whatsappUrl = kIsWeb
        ? Uri.parse('https://api.whatsapp.com/send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}')
        : Uri.parse('whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}');

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'WhatsApp açılamadı';
    }
  }
}
