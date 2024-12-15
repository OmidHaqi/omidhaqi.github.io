import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child:  Text.rich(
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
    );
  }
}
