import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String? icon;
  final bool leadingRequired;
  final VoidCallback? onTap;

  const MenuItem({
    Key? key,
    required this.title,
    this.icon,
    this.leadingRequired = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.lightGrey, width: 1),
        ),
      ),
      child: ListTile(
        leading: leadingRequired && icon != null
            ? Image.asset(icon!, scale: 3)
            : null,
        title: Text(title, style: Theme.of(context).textTheme.titleLarge,),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}