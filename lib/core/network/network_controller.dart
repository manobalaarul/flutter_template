import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  RxBool isOnline = true.obs;

  @override
  void onInit() {
    Connectivity().onConnectivityChanged.listen((status) {
      isOnline.value = status != ConnectivityResult.none;
    });
    super.onInit();
  }
}
