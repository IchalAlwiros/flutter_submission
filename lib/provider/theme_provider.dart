import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.amber.shade200, opacity: 0.8));

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.white,
  colorScheme: ColorScheme.light(),
  iconTheme: IconThemeData(color: Colors.redAccent, opacity: 0.8),
);

class ThemeProvider extends ChangeNotifier {
  //ThemeMode themeMode = ThemeMode.system;
  bool _darkTheme = false;
  //bool get isDarkMode => themeMode == ThemeMode.dark;
  bool get darkTheme => _darkTheme;
  SharedPreferences? _preferences;

  ThemeProvider() {
    _loadSettingFromPref();
  }

  _initializedPref() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingFromPref() async {
    await _initializedPref();
    _darkTheme = _preferences?.getBool('darkTheme') ?? false;
    notifyListeners();
  }

  _saveSettingPrefs() async {
    await _initializedPref();
    _preferences?.setBool('darkTheme', _darkTheme);
  }

//   void toggleTheme(bool isOn) {
//     //themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
//     _saveSettingPrefs();
//     notifyListeners();
//   }
// }

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveSettingPrefs();
    notifyListeners();
  }
}

// class MyThemes {
//   static final darkTheme = ThemeData(
//       scaffoldBackgroundColor: Colors.grey.shade900,
//       primaryColor: Colors.black,
//       colorScheme: ColorScheme.dark(),
//       iconTheme: IconThemeData(color: Colors.amber.shade200, opacity: 0.8));

//   static final lightTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: Colors.white,
//     colorScheme: ColorScheme.light(),
//     iconTheme: IconThemeData(color: Colors.redAccent, opacity: 0.8),
//   );
// }
