import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  RxString email = ''.obs;
  RxString fullName = ''.obs;
  RxString password = ''.obs;
  RxBool isPasswordVisible = false.obs;
  final isTermsAgreed = false.obs;
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

  void handleTermsAgreement(bool? newValue) {
    isTermsAgreed.value = newValue!;
  }

  void register() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      final payload = {
        'email': email.value,
        'fullName': fullName.value,
        'password': password.value,
        'isTermsAgreed': isTermsAgreed.value,
      };

      print(payload);

      Get.offNamed(Routes.LOGIN);

      Get.snackbar(
        'Registrasi Berhasil',
        'Silakan login untuk melanjutkan',
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
