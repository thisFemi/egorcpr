import 'package:flutter/material.dart';

class EntraceFader extends StatefulWidget {
  final Widget child;
  final Offset offset;
  final Duration delay;
  final Duration duration;

  const EntraceFader({
    Key? key,
    required this.child,
    this.offset = const Offset(0, 30), // default offset
    this.delay = const Duration(milliseconds: 300), // default delay
    this.duration = const Duration(milliseconds: 800), // default duration
  }) : super(key: key);

  @override
  _EntraceFaderState createState() => _EntraceFaderState();
}

class _EntraceFaderState extends State<EntraceFader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationOffset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    final curve = CurvedAnimation(
      curve: Curves.easeOut,
      parent: _controller,
    );

    _animationOffset = Tween<Offset>(
      begin: widget.offset,
      end: Offset.zero,
    ).animate(curve);

    // Delaying the animation start
    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animationOffset,
        child: widget.child,
      ),
    );
  }
}
