import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/widgets/roller_digit.dart';
import 'package:get/get.dart';

class CampaignStat extends StatelessWidget {
  final String title;
  final int count;

  CampaignStat({
    super.key,
    required this.title,
    required this.count,
  }) {
    _animateTo(count);
  }

  final RxInt displayedCount = 0.obs;

  void _animateTo(int target) async {
    for (int i = 0; i <= target; i++) {
      await Future.delayed(const Duration(milliseconds: 100));
      displayedCount.value = i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          final digits = displayedCount.value.toString().split('');
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: digits.map((d) {
              return RollerDigit(
                value: int.parse(d),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              );
            }).toList(),
          );
        }),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
