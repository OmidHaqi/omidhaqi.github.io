import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.size,
    required this.imageUrl,
    this.height,
    this.width,
    this.padding,
    this.borderRadius,
    this.imageWidth,
    this.imageHeight,
  });

  final Size size;
  final String imageUrl;
  final double? height;
  final double? width;
  final double? padding;
  final double? borderRadius;
  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: height,
      width: width,
      padding: EdgeInsets.all(
        padding ?? 5,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        child: Image.asset(
          imageUrl,
          height: imageHeight,
          width: imageWidth,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
