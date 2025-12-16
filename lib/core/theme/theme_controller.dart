import '../utils/app_constants.dart';
import '../utils/value_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadThemeFromPrefs();
  }

  // Load theme from SharedPreferences
  void loadThemeFromPrefs() async {
    isDark.value = Prefs.getBool(AppConstants.themeMode) ?? false;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  // Toggle theme and save to SharedPreferences
  void toggleTheme() async {
    isDark.value = !isDark.value;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);

    Prefs.setBool(AppConstants.themeMode, isDark.value);
  }
}
