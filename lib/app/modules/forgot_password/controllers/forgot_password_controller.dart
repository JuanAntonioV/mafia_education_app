import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';

class ForgotPasswordController extends GetxController {
  RxString email = ''.obs;
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

  void forgotPassword() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      final payload = {
        'email': email.value,
      };

      print(payload);

      Get.offNamed(Routes.LOGIN);

      Get.snackbar(
        'Reset Password Berhasil',
        'Silakan cek email untuk melanjutkan',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        animationDuration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        backgroundColor: Get.theme.colorScheme.primary,
        colorText: Get.theme.colorScheme.onPrimary,
      );
    }
  }
}
