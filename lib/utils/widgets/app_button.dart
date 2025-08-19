import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color textColor;
  final bool fullWidth;
  final double borderRadius;
  final Widget? trailingIcon;
  final EdgeInsetsGeometry? padding;
  final bool isEnabled;

  const AppButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.textColor = Colors.white,
    this.fullWidth = true,
    this.borderRadius = 12.0,
    this.trailingIcon,
    this.padding,
    this.isEnabled = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonChild = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600, color: textColor),
        ),
        if (trailingIcon != null) ...[
          const SizedBox(width: 8),
          trailingIcon!,
        ],
      ],
    );

    Widget button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isEnabled ? AppColors.primaryAccent : AppColors.silver,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 0,
      ),
      child: buttonChild,
    );

    if (fullWidth) {
      return SizedBox(width: double.infinity, child: button);
    } else {
      return button;
    }
  }
}