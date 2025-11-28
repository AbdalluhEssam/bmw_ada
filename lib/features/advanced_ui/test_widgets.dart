import 'package:bmw/features/home/ui/widgets/custom_roc_card.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;

  bool toggle = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Widgets')),
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Image.asset(AppAssets.appLogo),
        ),
      ),
    );
  }
}
