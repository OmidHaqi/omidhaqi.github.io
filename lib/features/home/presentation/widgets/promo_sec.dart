import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/arrow_b_t_n.dart';

class PromoSec extends StatelessWidget {
  const PromoSec({
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
      child: Padding(
        padding: EdgeInsets.only(left: Responsive.isDesktop(context)? size.width * 0.03 : size.width * 0.08
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/star.png'),
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let\'t',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Works ', style: TextStyle(fontSize: 28)),
                            TextSpan(
                              text: 'together',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Color(0xff0A58CA),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ]),
                const SizedBox(height: 10)
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Responsive.isMobile(context)? size.width * 0.05: size.width * 0.01),
              child: ArrowBTN(size: size, id: 'promo'),
            ),
          ],
        ),
      ),
    );
  }
}
