import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masuk'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Selamat Datang Kembali',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Silakan masuk untuk mengakses akun Anda',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.TEXT_SECONDARY,
                    ),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      _loginController.email.value = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  Obx(() {
                    return TextFormField(
                      obscureText: !_loginController.isPasswordVisible.value,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _loginController.togglePasswordVisibility();
                          },
                          child: Icon(_loginController.isPasswordVisible.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      onChanged: (value) {
                        _loginController.password.value = value;
                      },
                    );
                  }),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .end, // Align "Forgot Password" to the right
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement Forgot Password logic here
                        },
                        child: Text(
                          'Lupa Password?',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.SECONDARY,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _loginController.login();
                    },
                    child: const Text('Masuk'),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      text: 'Belum punya akun? ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.TEXT_SECONDARY,
                          ),
                      children: [
                        TextSpan(
                          text: 'Daftar disini',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.SECONDARY,
                                  ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(Routes.REGISTER),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
