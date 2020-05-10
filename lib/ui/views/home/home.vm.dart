import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedtry/ui/views/startup/startup.v.dart';

class HomeViewModel extends BaseViewModel {
  final logger = Logger();
  String title = 'jahir alam ';

  update(String data) {
    logger.d('Logs a debug $data');
  }

  gotoStartup(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StartupView()),
    );
  }
}
