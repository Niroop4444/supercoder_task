import 'dart:math' show pi;
import 'package:flutter/material.dart';

class RollerDigit extends StatelessWidget {
  final int value;
  final TextStyle style;
  const RollerDigit({super.key, required this.value, required this.style});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        final rotate = Tween(begin: pi / 2, end: 0.0).animate(animation);
        return AnimatedBuilder(
          animation: rotate,
          child: child,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.rotationY(rotate.value),
              alignment: Alignment.center,
              child: child,
            );
          },
        );
      },
      child: Text(
        "$value",
        key: ValueKey<int>(value),
        style: style,
      ),
    );
  }
}
