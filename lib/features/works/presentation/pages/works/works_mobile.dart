import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';

class WorksMobile extends StatelessWidget {
  const WorksMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: MobileAppBar(size: size),
      drawer: const MyDrawer(
        ctaText: 'Let\'s Talk',
         
      ),
      body: const Center(
        child: Text('WorksMobile'),
      ),
    );
  }
}
