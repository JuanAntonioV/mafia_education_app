import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
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
            ],
          ),
        ),
      ),
    );
  }
}
