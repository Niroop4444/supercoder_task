import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/dashboard/controller/dashboard_controller.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/campaign_status_widget.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/dashboard_menus.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/header.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            DashboardHeader(controller: controller),
            const SizedBox(height: 20),

            // Campaign status
            CampaignStatusWidget(
              applied: controller.campaigns["applied"]!.value,
              inProgress: controller.campaigns["inProgress"]!.value,
              completed: controller.campaigns["completed"]!.value,
            ),

            const SizedBox(height: 8),

            // Menus
            DashboardMenus(),
          ],
        ),
      ),
    );
  }
}
