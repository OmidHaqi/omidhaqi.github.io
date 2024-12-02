import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DesktopAppBar(),
          Expanded(
            child: Center(
              child: Text('About Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
