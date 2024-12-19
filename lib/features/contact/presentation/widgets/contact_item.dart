import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitle1,
    required this.iconPath,
  });
  final String title;
  final String subTitle;
  final String subTitle1;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        AppContainer(
          width: 80,
          height: 80,
          borderRadius: 10,
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(iconPath),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0x7FBCBCBC),
              ),
            ),
            Text(subTitle),
            Text(subTitle1),
          ],
        )
      ],
    );
  }
}
