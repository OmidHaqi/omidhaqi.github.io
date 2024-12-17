import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final Size size = MediaQuery.sizeOf(context);

    return  Scaffold(
      appBar: DesktopAppBar(size: size),
      body: const Column(
        children: [

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
