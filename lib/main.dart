import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initial_binding.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_controller.dart';
import 'core/utils/value_preferences.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Prefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return Container(
      color: Colors.white, // Add this
      child: GetMaterialApp(
        title: 'Flutter Starter',
        debugShowCheckedModeBanner: false,
        initialBinding: InitialBindings(),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.isDark.value
            ? ThemeMode.dark
            : ThemeMode.light,
        initialRoute: AppRoutes.SPLASH,
        getPages: AppPages.pages,
      ),
    );
  }
}
