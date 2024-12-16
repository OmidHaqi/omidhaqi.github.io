import 'package:flutter/material.dart';
import 'package:ox0/core/common/widgets/logo.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: size.height * 0.1,
      title: const Logo(),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size.height * 0.1);
}
