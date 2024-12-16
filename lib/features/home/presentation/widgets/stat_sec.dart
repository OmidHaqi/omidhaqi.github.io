import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/features/home/presentation/widgets/stat_card.dart';

class StatSec extends StatelessWidget {
  const StatSec({
    super.key,
    required this.size,
    this.width,
    this.height,
    required this.title1,
    required this.subTitle1,
    required this.title2,
    required this.subTitle2,
    required this.title3,
    required this.subTitle3,
    this.statCardWidth,
    this.statCardHeight,
  });

  final Size size;
  final double? width;
  final double? height;
  final String title1;
  final String subTitle1;
  final String title2;
  final String subTitle2;
  final String title3;
  final String subTitle3;
  final double? statCardWidth;
  final double? statCardHeight;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StatCard(
              size: size,
              width: statCardWidth ?? size.width * 0.07,
              height: statCardHeight ?? size.width * 0.09,
              title: title1, //  '+4',
              subTitle: subTitle1 //'YEARS XP',
              ),
          StatCard(
              size: size,
              width: statCardWidth ?? size.width * 0.07,
              height: statCardHeight ?? size.width * 0.09,
              title: title2, //'+20',
              subTitle: subTitle2 //'TOTAL PROJECTS',
              ),
          StatCard(
              size: size,
              width: statCardWidth ?? size.width * 0.07,
              height: statCardHeight ?? size.width * 0.09,
              title: title3, // '+10',
              subTitle: subTitle3 //'CLIENTS WORLDWIDE',
              ),
        ],
      ),
    );
  }
}
