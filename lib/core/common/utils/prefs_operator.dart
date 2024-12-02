import 'package:ox0/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsOperator {
  late SharedPreferences sharedPreferences;

  PrefsOperator() {
    sharedPreferences = locator<SharedPreferences>();
  }

  changeIntroState() async {
    sharedPreferences.setBool("unknow", false);
  }

  Future<bool> getIntroState() async {
    return sharedPreferences.getBool("unknow") ?? true;
  }
}
