import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('SplashController onInit called');
    _startApp();
  }

  Future<void> _startApp() async {
    print('Starting splash timer...');
    await Future.delayed(const Duration(seconds: 2));
    print('Navigating to home...');
    Get.offAllNamed(AppRoutes.MAIN);
    print('Navigation called');
  }
}
