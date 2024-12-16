import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/icon_container.dart';

class SocialSec extends StatelessWidget {
  const SocialSec({
    super.key,
    required this.size,
    this.width,
    this.height,
    this.titleHeight,
    this.titleWidth,
    this.subTitleHeight,
    this.subTitleWidth,
    this.iconContainerWidth,
    this.iconContainerHeight,
  });

  final Size size;
  final double? width;
  final double? height;
  final double? titleHeight;
  final double? titleWidth;
  final double? subTitleHeight;
  final double? subTitleWidth;
  final double? iconContainerWidth;
  final double? iconContainerHeight;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: height,
      width: width,
      padding: EdgeInsets.all(size.width * 0.001),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          AppContainer(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconContainer(
                  size: size,
                  width: iconContainerWidth ?? size.width * 0.04,
                  height: iconContainerHeight ?? size.width * 0.04,
                  margin: EdgeInsets.all(size.width * 0.005),
                  padding: EdgeInsets.all(size.width * 0.01),
                  iconPath: 'assets/icons/ic_telegram.svg',
                ),
                IconContainer(
                  size: size,
                  width: iconContainerWidth ?? size.width * 0.04,
                  height: iconContainerHeight ?? size.width * 0.04,
                  margin: EdgeInsets.all(size.width * 0.005),
                  padding: EdgeInsets.all(size.width * 0.01),
                  iconPath: 'assets/icons/ic_github.svg',
                ),
                IconContainer(
                  size: size,
                  width: iconContainerWidth ?? size.width * 0.04,
                  height: iconContainerHeight ?? size.width * 0.04,
                  margin: EdgeInsets.all(size.width * 0.005),
                  padding: EdgeInsets.all(size.width * 0.01),
                  iconPath: 'assets/icons/ic_linkdin.svg',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.0075,
                  vertical: size.width * 0.001,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: titleWidth ?? size.width * 0.062,
                      height: titleHeight ?? size.height * 0.03,
                      child: Text(
                        'STAY WITH ME',
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: subTitleWidth ?? size.width * 0.062,
                      height: subTitleHeight ?? size.height * 0.03,
                      child: const Text(
                        'Profiles',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.006),
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
