import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: DesktopAppBar(size: size),
      body: const Column(
        children: [

          Expanded(
            child: Center(
              child: Text('Contact Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
