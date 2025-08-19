import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/widgets/cached_image.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/widgets/title_description.dart';
import 'tag_chip.dart';

class CampaignItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final List<String> tags;

  const CampaignItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: CachedImage(imageUrl: imageUrl),
          ),
          const SizedBox(width: 12),

          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                titleDescription(title, description, context),

                // Tags
                Wrap(children: tags.map((tag) => TagChip(label: tag)).toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
