import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    this.width,
    this.height,
    required this.shortDes,
    required this.name,
    required this.longDes,
    required this.profileUrl,
    required this.profileWidth,
    required this.profileHeight,
    required this.size,
    this.shortDesWidth,
    this.nameWidth,
    this.longDesWidth, 
    required this.bottomPadding,
  });

  final double? width;
  final double? height;
  final double? shortDesWidth;
  final double? nameWidth;
  final double? longDesWidth;
  final double bottomPadding;
  final Size size;
  final String shortDes;
  final String name;
  final String longDes;
  final String profileUrl;
  final double profileWidth;
  final double profileHeight;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(size.width * 0.02),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                profileUrl,
                fit: BoxFit.cover,
                height: profileHeight,
                width: profileWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: bottomPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                SizedBox(
                  width: shortDesWidth,
                  child: Text(
                    shortDes,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: nameWidth,
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: longDesWidth,
                  child: Text(
                    longDes,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: size.width * 0.015,
              bottom: size.width * 0.02,
            ),
            child: SvgPicture.asset(
              'assets/icons/arrow_to_right.svg',
              height: size.height * 0.05,
              width: size.width * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
