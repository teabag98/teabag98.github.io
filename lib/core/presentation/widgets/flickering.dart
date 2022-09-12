import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:flutter/material.dart';

class CustomFlicker extends StatefulWidget {
  const CustomFlicker({super.key});

  @override
  _CustomFlickerState createState() => _CustomFlickerState();
}

class _CustomFlickerState extends State<CustomFlicker>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController!.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController!,
      child: const CircleAvatar(
        radius: 5,
        backgroundColor: AppColors.red,
      ),
    );
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }
}
