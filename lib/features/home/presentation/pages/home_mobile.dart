import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/screen_utils.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/core/common/widgets/my_drawer_item.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: MobileAppBar(size: size),
      drawer: MyDrawer(
        ctaText: 'Let\'s Talk',
        onPressedCTA: () {},
        children: [
          MyDrawerItem(
            title: 'Home',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'About',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Works',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Blogs',
            onTap: () {},
          ),
          MyDrawerItem(
            title: 'Contact',
            onTap: () {},
          ),
        ],
      ),
      body: Center(
        child: AppContainer(
          width: 350.dp(context),
          height: 200.dp(context),
          child: const Center(
            child: Text(
              "Mobile",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
