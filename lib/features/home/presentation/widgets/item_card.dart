import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.size,
    this.height,
    this.width,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.imageHeight,
    this.imageWidth,
  });

  final Size size;
  final double? height;
  final double? width;
  final double? imageHeight;
  final double? imageWidth;
  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.001,
        vertical: size.width * 0.002,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: imageHeight,
            width: imageWidth,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.0095,
                  vertical: size.width * 0.001,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.062,
                      height: size.height * 0.03,
                      child: Text(
                        title,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.062,
                      height: size.height * 0.03,
                      child: Text(
                        subTitle,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.006),
                child: SvgPicture.asset(
                  'assets/icons/arrow_to_right.svg',
                  height: size.height * 0.05,
                  width: size.width * 0.05,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
