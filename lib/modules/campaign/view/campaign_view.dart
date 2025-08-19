import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/campaign/controller/applied_campaign_controller.dart';
import 'package:supercoder_task_assignment/modules/campaign/controller/campaign_controller.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/tabs/campaign_applied_tab.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/tabs/campaign_completed_tab.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/tabs/campaign_in_progress_tab.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_app_bar.dart';
import 'package:supercoder_task_assignment/utils/widgets/headline_text.dart';

class CampaignView extends GetView<CampaignController> {
  const CampaignView({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(AppliedCampaignController());

    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headlineText("캠페인 매칭", context),
          const SizedBox(height: 30),
          TabBar(
            controller: controller.tabController,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [Tab(text: "신청"), Tab(text: "진행중"), Tab(text: "완료")],
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [CampaignAppliedTab(), CampaignInProgressTab(), CampaignCompletedTab()],
            ),
          ),
        ],
      ),
    );
  }
}
