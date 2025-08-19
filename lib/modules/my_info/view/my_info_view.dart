import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/basic_info/view/basic_info_view.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/menu_item.dart';
import 'package:supercoder_task_assignment/modules/password/view/password_view.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_app_bar.dart';
import 'package:supercoder_task_assignment/utils/widgets/headline_text.dart';

class MyInfoView extends StatelessWidget {
  const MyInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headlineText("내정보", context),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                MenuItem(
                  title: "기본 정보",
                  leadingRequired: false,
                  onTap: () {
                    Get.to(() => const BasicInfoView());
                  },
                ),
                MenuItem(title: "비밀번호 설정", leadingRequired: false, onTap: () => Get.to(() => const PasswordView())),
                MenuItem(title: "관심 카테고리", leadingRequired: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
