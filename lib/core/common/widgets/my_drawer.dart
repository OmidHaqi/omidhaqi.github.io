import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Widget child;
  const MyDrawer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BlurBox(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        blur: 20,
        child: child,
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
