import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class Summery extends StatelessWidget {
  const Summery({
    super.key,
    required this.size,
    required this.title,
    required this.name,
    required this.description,
    this.titleFontSize,
    this.containerWidth,
    this.containerHeight,
  });

  final Size size;
  final String title;
  final String name;
  final String description;
  final double? titleFontSize;
  final double? containerWidth;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: size.height * 0.03,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
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
        ),
        AppContainer(
          width: containerWidth,
          height: containerHeight,
          padding: EdgeInsets.only(
            left: Responsive.isDesktop(context)
                ? size.width * 0.02
                : size.width * 0.08,
          ),
          child: Column(
            spacing: size.height * 0.01,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/star.png'),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width:Responsive.isDesktop(context)? size.width * 0.4: size.width * 0.7,
                height: size.height * 0.15,
                child: Padding(
                  padding:
                      EdgeInsets.only(right: size.width * 0.02, bottom: 20),
                  child: Text(
                    description,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
