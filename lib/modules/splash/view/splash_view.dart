import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/splash/controller/splash_controller.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Obx(() {
          return Text(
            controller.displayedText.value,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2,
            ),
          );
        }),
      ),
    );
  }
}