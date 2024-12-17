import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/core/common/widgets/my_drawer_item.dart';
import 'package:ox0/features/about/presentation/pages/about_screen.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_screen.dart';
import 'package:ox0/features/contact/presentation/pages/contact_screen.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/features/works/presentation/pages/works_screen.dart';
import 'app_button.dart'; // Add this import

class MyDrawer extends StatelessWidget {
  final VoidCallback? onPressedCTA;
  final String ctaText;
  const MyDrawer({
    super.key,
    this.onPressedCTA,
    required this.ctaText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BlurBox(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).colorScheme.primary.withValues(
              alpha: 0.1,
            ),
        blur: 20,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(
                height: 20,
              ),
              MyDrawerItem(
                title: 'Home',
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
              MyDrawerItem(
                title: 'About',
                onTap: () {
                  Navigator.pushNamed(context, AboutScreen.routeName);
                },
              ),
              MyDrawerItem(
                title: 'Works',
                onTap: () {
                  Navigator.pushNamed(context, WorksScreen.routeName);
                },
              ),
              MyDrawerItem(
                title: 'Blogs',
                onTap: () {
                  Navigator.pushNamed(context, BlogScreen.routeName);
                },
              ),
              MyDrawerItem(
                title: 'Contact',
                onTap: () {
                  Navigator.pushNamed(context, ContactScreen.routeName);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                onPressed: onPressedCTA,
                text: ctaText,
              ),
              const Text('Made with ☕ by Umut'),
            ],
          ),
        ),
      ),
      Positioned(
        right: 30,
        top: 30,
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_rounded),
        ),
      )
    ]);
  }
}
