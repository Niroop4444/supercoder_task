import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/campaign/controller/applied_campaign_controller.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/widgets/campaign_item.dart';
import 'package:supercoder_task_assignment/utils/widgets/bubble_loader.dart';

class CampaignAppliedTab extends StatelessWidget {
  CampaignAppliedTab({super.key});

  final AppliedCampaignController controller = Get.find<AppliedCampaignController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          // Detect when user scrolls to bottom of list
          // pixels = current scroll position, maxScrollExtent = total scrollable height
          // When equal, user has reached the bottom and we can load more data
          if (!controller.isLoadingMore.value && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            controller.loadMore();
          }
          return false;
        },
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: controller.appliedCampaigns.length + (controller.isLoadingMore.value ? 1 : 0),
          itemBuilder: (context, index) {
            if (index < controller.appliedCampaigns.length) {
              final campaign = controller.appliedCampaigns[index];
              return CampaignItem(
                imageUrl: campaign.imageUrl,
                title: campaign.title,
                description: campaign.description,
                tags: campaign.tags,
              );
            } else {
              // pagination loader only after scrolling
              return const Padding(padding: EdgeInsets.all(16), child: Center(child: BubbleLoader()));
            }
          },
        ),
      );
    });
  }
}
