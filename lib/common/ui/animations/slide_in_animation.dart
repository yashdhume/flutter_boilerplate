import 'package:flutter/material.dart';

class SlideInAnimation extends StatefulWidget {
  const SlideInAnimation({
    required this.child,
    required this.offset,
    super.key,
    this.curve = Curves.fastOutSlowIn,
    this.duration = const Duration(milliseconds: 750),
    this.delay = Duration.zero,
  });

  final Widget child;
  final Offset offset;
  final Curve curve;
  final Duration duration;
  final Duration delay;

  @override
  State<SlideInAnimation> createState() => _SlideInAnimationState();
}

class _SlideInAnimationState extends State<SlideInAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _hidden = false;

  @override
  void initState() {
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = CurveTween(curve: widget.curve).animate(_controller);
    _hidden = widget.delay != Duration.zero;
    Future<void>.delayed(widget.delay).then((_) {
      if (mounted) {
        _hidden = false;
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
      builder: (BuildContext context, Widget? child) => _hidden
          ? Container()
          : Transform.translate(
              offset: Offset(
                (1 - _animation.value) * widget.offset.dx,
                (1 - _animation.value) * widget.offset.dy,
              ),
              child: widget.child,
            ),
      child: widget.child,
    );
  }
}
