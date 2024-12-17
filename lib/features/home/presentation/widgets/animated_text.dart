import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({
    super.key,
    required this.size,
    required this.text,
    this.width,
    this.height,
  });

  final Size size;
  final String text;
  final double? width;
  final double? height;

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat();

    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(1.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.all(widget.size.width * 0.01),
      child: ClipRect(
        child: Center(
          child: SlideTransition(
            position: _slideAnimation,
            child: Text(
              widget.text,
              maxLines: 1,
            ),
          ),
        ),
      ),
    );
  }
}
