import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'app_button.dart'; // Add this import

class MyDrawer extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback? onPressedCTA;
  final String ctaText;
  const MyDrawer({
    super.key,
    required this.children,
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
              ...children,
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
