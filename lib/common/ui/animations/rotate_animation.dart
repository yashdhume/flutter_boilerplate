import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:frontend/common/enums/rotate_direction.dart';

class RotateAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final RotateDirection rotateDirection;

  const RotateAnimation({
    required this.child,
    this.rotateDirection = RotateDirection.clockwise,
    super.key,
    this.duration = const Duration(milliseconds: 700),
    this.delay = Duration.zero,
  });

  @override
  State<RotateAnimation> createState() => _RotateAnimationState();
}

class _RotateAnimationState extends State<RotateAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: widget.duration, vsync: this);
    Future<void>.delayed(widget.delay).then((_) {
      if (mounted) {
        _controller.forward();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (_, child) {
        return Transform.rotate(
          angle: widget.rotateDirection == RotateDirection.clockwise
              ? _controller.value * pi * 2
              : -_controller.value * pi * 2,
          child: child,
        );
      },
    );
  }
}
