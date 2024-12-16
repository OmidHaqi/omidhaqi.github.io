import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.size,
    this.width,
    this.height,
    required this.iconPath,
    this.margin,
    this.padding,
  });
  final Size size;
  final String iconPath;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.all(size.width * 0.01),
      padding: padding ?? EdgeInsets.all(size.width * 0.01),
      decoration: ShapeDecoration(

        color: const Color(0xFF2A2A2A),
        shape: RoundedRectangleBorder(
          
          side: BorderSide(
            width: 1,
            color: Colors.white.withValues(alpha: 0.1),
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: SvgPicture.asset(iconPath),
    );
  }
}
