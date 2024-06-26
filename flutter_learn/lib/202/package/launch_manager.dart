import 'package:flutter/material.dart';
import 'package:flutter_learn/202/package_learn_view.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin on State<PackegeLearnView> {
  void launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      // ignore: deprecated_member_use
      await launch(url.toString());
    }
  }
}
