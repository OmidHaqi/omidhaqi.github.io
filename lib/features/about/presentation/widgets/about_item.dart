import 'package:flutter/material.dart';

class AboutItem extends StatelessWidget {
  final String duration;
  final String title;
  final String company;

  const AboutItem({
    super.key,
    required this.duration,
    required this.title,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      spacing: size.height * 0.005,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          duration,
          style: const TextStyle(
            color: Color(0x99BCBCBC),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(company),
      ],
    );
  }
}
