import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);

  final RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: _registerController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Buat Akun Baru',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Mulailah menuju kesuksesan bersama kami',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.TEXT_SECONDARY,
                      ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Nama Lengkap',
                      ),
                      onChanged: (value) {
                        _registerController.fullName.value = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        } else if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                          return 'Nama tidak valid';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      onChanged: (value) {
                        _registerController.email.value = value;
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
                    const SizedBox(height: 20),
                    Obx(() {
                      return TextFormField(
                        obscureText: !_registerController.isPasswordVisible.value,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              _registerController.togglePasswordVisibility();
                            },
                            child: Icon(_registerController.isPasswordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        onChanged: (value) {
                          _registerController.password.value = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          } else if (value.length < 6) {
                            return 'Password minimal 6 karakter';
                          }
                        },
                      );
                    }),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                            value: _registerController.isTermsAgreed.value,
                            onChanged: _registerController.handleTermsAgreement,
                          ),
                        ),
                        const Flexible(
                          child: Text(
                            'Dengan melanjutkan, maka saya menyetujui persyaratan & ketentuan yang berlaku',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        _registerController.register();
                      },
                      child: const Text('Masuk'),
                    ),
                    const SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                        text: 'Sudah punya akun? ',
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
      ),
    );
  }
}
