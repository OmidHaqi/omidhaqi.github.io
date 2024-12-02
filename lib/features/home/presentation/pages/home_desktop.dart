import 'package:flutter/material.dart';

import 'package:ox0/core/common/widgets/desktop_app_bar.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DesktopAppBar(),
          Expanded(
            child: Center(
              child: Text('Home Desktop'),
            ),
          ),
        ],
      ),
    );
  }
}
