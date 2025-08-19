import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:supercoder_task_assignment/modules/dashboard/controller/dashboard_controller.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/menu_item.dart';
import 'package:supercoder_task_assignment/modules/my_info/view/my_info_view.dart';
import 'package:supercoder_task_assignment/utils/constants/assets.dart';

class DashboardMenus extends GetView<DashboardController> {
  const DashboardMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuItem(
          icon: AppAssets.userIcon,
          title: "내 정보",
          onTap: () {
            Get.to(() => const MyInfoView());
          },
        ),
        const MenuItem(title: "공지사항", icon: AppAssets.noteIcon),
        const MenuItem(title: "1:1문의", icon: AppAssets.messagesIcon),
        const MenuItem(title: "FAQ", icon: AppAssets.messageQuestionIcon),
        const MenuItem(title: "약관 및 정책", icon: AppAssets.taskIcon),
        MenuItem(title: "로그아웃", icon: AppAssets.logoutIcon, onTap: controller.logout),
        const MenuItem(title: "회원탈퇴", icon: AppAssets.breakAwayIcon),
      ],
    );
  }
}