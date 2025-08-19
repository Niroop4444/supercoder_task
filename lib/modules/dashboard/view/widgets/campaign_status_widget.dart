import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/campaign/binding/campaign_binding.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/campaign_view.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/widgets/campain_stat.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class CampaignStatusWidget extends StatelessWidget {
  final int applied;
  final int inProgress;
  final int completed;

  const CampaignStatusWidget({super.key, required this.applied, required this.inProgress, required this.completed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const CampaignView(), binding: CampaignBinding());
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.pureWhite,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.flashWhite, width: 1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("나의 캠페인", style: Theme.of(context).textTheme.titleMedium),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CampaignStat(title: "신청", count: applied),
                  const Icon(Icons.arrow_forward_ios, color: Color(0xFFBCBCBC), size: 14),
                  CampaignStat(title: "진행중", count: inProgress),
                  const Icon(Icons.arrow_forward_ios, color: Color(0xFFBCBCBC), size: 14),
                  CampaignStat(title: "완료", count: completed),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
