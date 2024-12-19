import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
    required this.titleFontSize,
    required this.size,
  });

  final String title;
  final double? titleFontSize;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/star_2.png'),
        Text(
          title,
          style: TextStyle(
            fontSize: titleFontSize ?? size.width * 0.04,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset('assets/images/star_2.png'),
      ],
    );
  }
}
