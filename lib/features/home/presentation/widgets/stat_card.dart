import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.size,
    this.width,
    this.height,
    required this.title,
    required this.subTitle,
  });

  final Size size;
  final double? width;
  final double? height;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white.withValues(alpha: 0.5),
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
