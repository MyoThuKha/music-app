import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  late SharedPreferences userData;

  void init() async {
    userData = await SharedPreferences.getInstance();

    if (userData.getBool("new_user") == null) {
      bool setName = await userData.setBool("new_user", true);
    } else {
      bool setName = await userData.setBool("new_user", false);
    }
  }

  Future<void> addName(String userName) async {
    bool setName = await userData.setString("name", userName);
    if (setName) {
      print("user name add");
    }
  }

  Future<void> addTheme(bool isDarkMode) async {
    bool setTheme = await userData.setBool("name", isDarkMode);
    if (setTheme) {
      print("theme updated");
    }
  }
}
