import 'package:get/get.dart';

import '../features/bindings/splash_bindings.dart';
import '../features/views/main_view.dart';
import '../features/views/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(name: AppRoutes.MAIN, page: () => const MainView()),
  ];
}
