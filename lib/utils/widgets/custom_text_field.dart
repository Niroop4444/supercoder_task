import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isMandatory;
  final Widget? trailingIcon;
  final TextEditingController? controller;
  final String? hintText;
  final bool isEditable;

  const CustomTextField({
    super.key,
    required this.label,
    this.isMandatory = false,
    this.trailingIcon,
    this.controller,
    this.hintText,
    this.isEditable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: label,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
              children: isMandatory ? [TextSpan(text: ' *', style: TextStyle(color: AppColors.secondaryColor))] : [],
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: isEditable ? Colors.white : AppColors.flashWhite,
              contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.lightGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.lightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.lightGrey, width: 2),
              ),
              suffixIcon: trailingIcon,
            ),
          ),
        ],
      ),
    );
  }
}
