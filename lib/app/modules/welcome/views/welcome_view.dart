import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';
import 'package:mafia_education_app/app/themes/app_colors.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/welcome.png',
                          width: 250,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Sahabat Terbaik di Setiap Belajarmu',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Kami menyediakan program belajar yang efektif dan menyenangkan agar Anda bisa belajar dengan lebih mudah.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.TEXT_SECONDARY,
                            ),
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                        onPressed: () => Get.offNamed(Routes.HOME),
                        child: const Text('Eksplore aplikasi'),
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                        onPressed: () => Get.toNamed(Routes.LOGIN),
                        child: const Text('Login sekarang'),
                      ),
                      const SizedBox(height: 30),
                      RichText(
                        text: TextSpan(
                          text: 'Belum punya akun? ',
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: 'Daftar disini',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
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
                  ),
                ),
              ],
            ),
          )
        ],
=======
      appBar: AppBar(
        title: const Text('WelcomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WelcomeView is working',
          style: TextStyle(fontSize: 20),
        ),
>>>>>>> parent of 62a13ba (update: header title alignment)
      ),
    );
  }
}
