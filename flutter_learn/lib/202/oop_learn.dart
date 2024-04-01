import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
  void toShare(String path) async {
    // ignore: deprecated_member_use
    await launch(path);
  }
}

class FileDownload<T> extends IFileDownload with SharedMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    //Exception çalıştırmak istiyorsan başına throw at.
    if (fileItem == null) throw FileDownloadException();
    if (kDebugMode) {
      print('a');
    }
    return true;
  }

  void smsShare() {}
  /*
  @override
  void toShare(String path) async {
    // ignore: deprecated_member_use
    await launch('sms:$path');
  }
  */
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin SharedMixin on IFileDownload{
  void toShowFile() {}
}

class InstagramDownload extends IFileDownload with SharedMixin{
  @override
  bool? downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }
}