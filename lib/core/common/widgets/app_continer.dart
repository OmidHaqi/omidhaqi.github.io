import 'package:flutter/material.dart';

class AppContiner extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final double borderRadius = 30;
  final double borderWidth = 1;
  final void Function()? onTap;
  const AppContiner({
    super.key,
    this.width,
    this.height,
    this.onTap,
    required this.child,
    this.margin, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        foregroundDecoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.87, -0.50),
            end: const Alignment(-0.87, 0.5),
            colors: [
              Colors.white.withValues(alpha: 0.07),
              Colors.white.withValues(alpha: 0.02)
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: Colors.white.withValues(alpha: 0.10),
              width: borderWidth,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
