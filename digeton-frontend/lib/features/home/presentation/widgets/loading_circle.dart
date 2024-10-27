import 'package:flutter/material.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class LoadingCircle extends StatefulWidget {
  const LoadingCircle({super.key});

  @override
  _LoadingCircleState createState() => _LoadingCircleState();
}

class _LoadingCircleState extends State<LoadingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.1, end: 0.5).animate(CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        )),
        child: Container(
          margin: const EdgeInsets.all(16),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
