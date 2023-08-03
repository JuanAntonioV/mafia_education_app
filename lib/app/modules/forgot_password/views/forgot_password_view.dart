import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);

  final ForgotPasswordController _forgotPasswordController = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lupa Password'),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Form(
              key: _forgotPasswordController.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Lupa Password',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Silakan masukkan email untuk reset password',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.TEXT_SECONDARY,
                        ),
                  ),
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        onChanged: (value) {
                          _forgotPasswordController.email.value = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                              .hasMatch(value)) {
                            return 'Email tidak valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          _forgotPasswordController.forgotPassword();
                        },
                        child: const Text('Lupa Password'),
                      ),
                      const SizedBox(height: 30),
                      RichText(
                        text: TextSpan(
                          text: 'Sudah ingat password? ',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: AppColors.TEXT_SECONDARY,
                              ),
                          children: [
                            TextSpan(
                              text: 'Masuk disini',
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.SECONDARY,
                                  ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.offNamed(Routes.LOGIN),
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
        ));
  }
}
