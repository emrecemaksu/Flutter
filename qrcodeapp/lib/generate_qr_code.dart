import 'package:flutter/material.dart';
import 'package:qrcodeapp/qr_image.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Oluşturucu'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'URL Giriniz'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return QRImage(controller);
                })));
              },
              child: const Text('QR Code Yarat')),
        ],
      ),
    );
  }
}
