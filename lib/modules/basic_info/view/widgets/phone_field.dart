import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';
import 'package:supercoder_task_assignment/utils/widgets/app_button.dart';

class PhoneField extends StatelessWidget {
  final String fieldTitle;
  final String buttonTitle;
  final bool isMandatory;
  final TextEditingController? controller;
  final String? hintText;

  const PhoneField({
    super.key,
    required this.fieldTitle,
    required this.buttonTitle,
    this.isMandatory = false,
    this.controller,
    this.hintText,
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
              text: fieldTitle,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
              children: isMandatory ? [TextSpan(text: ' *', style: TextStyle(color: AppColors.secondaryColor))] : [],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: hintText,
                    filled: true,
                    fillColor: Colors.white,
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
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: AppButton(label: buttonTitle, onPressed: () {})),
            ],
          ),
        ],
      ),
    );
  }
}
