import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/widgets/campaign_item.dart';
import 'package:supercoder_task_assignment/utils/constants/dummy_data.dart';

class CampaignInProgressTab extends StatelessWidget {
  const CampaignInProgressTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: dummyInProgressCampaigns.length,
      itemBuilder: (context, index) {
        final campaign = dummyInProgressCampaigns[index];
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