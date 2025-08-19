import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/dashboard/controller/dashboard_controller.dart';
import 'package:supercoder_task_assignment/utils/constants/assets.dart';

class DashboardHeader extends StatelessWidget {
  final DashboardController controller;

  const DashboardHeader({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() => Text(
          "안녕하세요, \n${controller.userName.value}",
          style: Theme.of(context).textTheme.headlineSmall,
        )),
        Obx(() {
          return GestureDetector(
            onTap: () => controller.pickImage(context),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                image: controller.pickedImage.value != null
                    ? DecorationImage(
                  image: FileImage(controller.pickedImage.value!),
                  fit: BoxFit.cover,
                )
                    : null,
              ),
              child: controller.pickedImage.value == null
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.cameraIcon, width: 30),
                  const SizedBox(height: 5),
                  Text(
                    "이미지 등록",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              )
                  : null,
            ),
          );
        }),
      ],
    );
  }
}