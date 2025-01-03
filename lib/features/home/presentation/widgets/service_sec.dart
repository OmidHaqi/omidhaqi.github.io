import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/arrow_b_t_n.dart';
import 'package:ox0/core/common/widgets/icon_container.dart';

class ServiceSec extends StatelessWidget {
  const ServiceSec({
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
      width: width,
      height: height,
      padding: EdgeInsets.all(size.width * 0.001),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconContainer(
                size: size,
                width: iconContainerWidth ?? size.width * 0.05,
                height: iconContainerHeight ?? size.width * 0.05,
                iconPath: 'assets/icons/mobile_dev.svg',
              ),
              IconContainer(
                size: size,
                width: iconContainerWidth ?? size.width * 0.05,
                height: iconContainerHeight ?? size.width * 0.05,
                iconPath: 'assets/icons/union.svg',
              ),
              IconContainer(
                size: size,
                width: iconContainerWidth ?? size.width * 0.05,
                height: iconContainerWidth ?? size.width * 0.05,
                iconPath: 'assets/icons/pen.svg',
              ),
              IconContainer(
                size: size,
                width: iconContainerWidth ?? size.width * 0.05,
                height: iconContainerHeight ?? size.width * 0.05,
                iconPath: 'assets/icons/camera.svg',
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.0075,
              vertical: size.width * 0.001,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        width: titleWidth ?? size.width * 0.09,
                        height: titleHeight ?? size.height * 0.03,
                        child: Text(
                          'SPECIALIZATION',
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
                          'Services Offering',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ArrowBTN(
                  size: size,
                  id: 'service',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
