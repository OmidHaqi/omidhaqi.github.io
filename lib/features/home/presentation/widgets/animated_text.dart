import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class AnimatedText extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      padding: EdgeInsets.all(size.width * 0.01),
      child: Center(
        child: Text(
          text,
          maxLines: 1,
        ),
      ),
    );
  }
}
