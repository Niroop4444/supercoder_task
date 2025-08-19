import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

Widget titleDescription(String title, String description, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      // Title
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.charcoal),
      ),
      const SizedBox(height: 4),

      // Description
      Text(
        description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.darkGrey),
      ),
      const SizedBox(height: 8),
    ],
  );
}