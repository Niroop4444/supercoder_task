import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/widgets/campaign_item.dart';
import 'package:supercoder_task_assignment/utils/constants/dummy_data.dart';

class CampaignCompletedTab extends StatelessWidget {
  const CampaignCompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: dummyCompletedCampaigns.length,
      itemBuilder: (context, index) {
        final campaign = dummyCompletedCampaigns[index];
        return CampaignItem(
          imageUrl: campaign.imageUrl,
          title: campaign.title,
          description: campaign.description,
          tags: campaign.tags,
        );
      },
    );
  }
}