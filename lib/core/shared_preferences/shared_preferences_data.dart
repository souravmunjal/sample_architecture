import 'package:sample_architecture/core/shared_preferences/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesData {
  static Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  static dynamic checkIfUserLoggedIn() async {
    SharedPreferences sharedPreferences = await getSharedPreferences();
    return sharedPreferences.get(SharedPreferencesKeys.IS_USER_LOGGED_IN);
  }

  static void setUserLoggedIn(bool isLoggedIn) async {
    SharedPreferences sharedPreferences = await getSharedPreferences();
    sharedPreferences.setBool(
        SharedPreferencesKeys.IS_USER_LOGGED_IN, isLoggedIn);
  }
}
