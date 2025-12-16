import 'package:get/get.dart';

import '../core/network/dio_client.dart';
import '../core/network/network_controller.dart';
import '../core/theme/theme_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(() => ThemeController(), permanent: true);
    Get.put(() => NetworkController(), permanent: true);
    Get.put(() => DioClient(), permanent: true);
  }
}
