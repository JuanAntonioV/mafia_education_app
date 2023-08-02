import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.WELCOME);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
