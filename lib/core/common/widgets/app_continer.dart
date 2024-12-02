import 'package:flutter/material.dart';

class AppContiner extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final double borderRadius = 30;
  final double borderWidth = 1;
  const AppContiner({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      foregroundDecoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.87, -0.50),
          end: const Alignment(-0.87, 0.5),
          colors: [
            Colors.white.withOpacity(0.07),
            Colors.white.withOpacity(0.02)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: Colors.white.withOpacity(0.10),
            width: borderWidth,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: child,
    );
  }
}