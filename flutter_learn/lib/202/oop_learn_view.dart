import 'package:flutter/material.dart';
import 'package:flutter_learn/202/oop_learn.dart';

class OOPLearnView extends StatefulWidget {
  const OOPLearnView({super.key});

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fileDownload = FileDownload();
  }

  FileDownload? fileDownload;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircularProgressIndicator(
            color: Colors.white,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fileDownload?.downloadItem(null);
        },
      ),
    );
  }
}
