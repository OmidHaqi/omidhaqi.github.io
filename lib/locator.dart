import 'package:get_it/get_it.dart';
import 'package:ox0/core/common/utils/prefs_operator.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> initLocator() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(
    sharedPreferences,
  );
  locator.registerSingleton<PrefsOperator>(
    PrefsOperator(),
  );
}
