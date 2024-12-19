import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/logo.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(4),
      child:  Column(
        spacing: 5,
        children: [
          Logo(),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '© All rights reserved by  ',
                ),
                TextSpan(
                  text: 'Umut',
                  style: TextStyle(
                      color: Color(0xff0A58CA),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
