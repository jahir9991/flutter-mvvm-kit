import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  final logger = Logger();
  String title = 'startup ';

  update(String data) {
    logger.d('Logs a debug $data');
  }
}
