import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/icon_container.dart';

class ServiceSec extends StatelessWidget {
  const ServiceSec({
    super.key,
    required this.size,
    this.width,
    this.height,
  });

  final Size size;
  final double? width;
  final double? height;

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
            children: [
              IconContainer(
                size: size,
                width: size.width * 0.05,
                height: size.width * 0.05,
                iconPath: 'assets/icons/mobile_dev.svg',
              ),
              IconContainer(
                size: size,
                width: size.width * 0.05,
                height: size.width * 0.05,
                iconPath: 'assets/icons/union.svg',
              ),
              IconContainer(
                size: size,
                width: size.width * 0.05,
                height: size.width * 0.05,
                iconPath: 'assets/icons/pen.svg',
              ),
              IconContainer(
                size: size,
                width: size.width * 0.05,
                height: size.width * 0.05,
                iconPath: 'assets/icons/camera.svg',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.01,
                  vertical: size.width * 0.002,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.09,
                      height: size.height * 0.03,
                      child: Text(
                        'SPECIALIZATION',
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.062,
                      height: size.height * 0.03,
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
