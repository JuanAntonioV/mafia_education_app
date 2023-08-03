import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxString email = ''.obs;
  RxString password = ''.obs;
  RxBool isPasswordVisible = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      if (email.value == 'admin@email.com' && password.value == 'admin123') {
        Get.offAllNamed(Routes.HOME);

        final payload = {
          'email': email.value,
          'password': password.value,
        };

        print(payload);
      } else {
        Get.snackbar(
          'Login Gagal',
          'Email atau password salah',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
          animationDuration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          backgroundColor: Get.theme.colorScheme.error,
          colorText: Get.theme.colorScheme.onError,
        );
      }
    }
  }
}
