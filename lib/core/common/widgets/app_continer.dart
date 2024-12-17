import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  final double? borderRadius;
  final double? borderWidth;
  final void Function()? onTap;
  const AppContainer({
    super.key,
    this.width,
    this.height,
    this.onTap,
    required this.child,
    this.margin,
    this.padding,
    this.borderRadius,
    this.borderWidth,
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
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
            side: BorderSide(
              color: Colors.white.withValues(alpha: 0.10),
              width: borderWidth ?? 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
