import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/constants/colors.dart';

class BubbleLoader extends StatefulWidget {
  const BubbleLoader({Key? key}) : super(key: key);

  @override
  State<BubbleLoader> createState() => _BubbleLoaderState();
}

class _BubbleLoaderState extends State<BubbleLoader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..repeat();

    _animation1 = Tween(
      begin: 0.0,
      end: -6.0,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.3, curve: Curves.easeInOut)));

    _animation2 = Tween(
      begin: 0.0,
      end: -6.0,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.5, curve: Curves.easeInOut)));

    _animation3 = Tween(
      begin: 0.0,
      end: -6.0,
    ).animate(CurvedAnimation(parent: _controller, curve: const Interval(0.4, 0.7, curve: Curves.easeInOut)));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBubble(_animation1),
          const SizedBox(width: 8),
          _buildBubble(_animation2),
          const SizedBox(width: 8),
          _buildBubble(_animation3),
        ],
      ),
    );
  }

  Widget _buildBubble(Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, child) {
        return Transform.translate(offset: Offset(0, animation.value), child: child);
      },
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
