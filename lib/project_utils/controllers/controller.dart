import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

class MyController extends GetxController {
  String _timeM = DateFormat('m').format(DateTime.now());
  String _timeH = DateFormat('H').format(DateTime.now());
  void incrementTimeM() {
    _timeM = (DateTime.now().second + 1).toString();
    update();
  }

  void incrementTimeH() {
    _timeH = (DateTime.now().hour + 1).toString();
    update();
  }

  String get timeH => _timeH;
  String get timeM => _timeM;
}
