import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mafia_education_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  void _handleOnClick() {
    Get.toNamed(Routes.WELCOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
>>>>>>> parent of 62a13ba (update: header title alignment)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: _handleOnClick,
              child: const Text('Go to WelcomeView'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Go to WelcomeView'),
            )
          ],
        ),
      ),
    );
  }
}
