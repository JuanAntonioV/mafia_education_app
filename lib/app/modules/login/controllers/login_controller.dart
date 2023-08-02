import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString email = ''.obs;
  RxString password = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxBool isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }

  void login() {
    print({
      'email': email.value,
      'password': password.value,
    });
  }
}
