import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/screen_utils.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: AppContiner(
          width: 50.w(context),
          height: 33.h(context),
          child: Center(
            child: Text(
              "Desktop",
              style: TextStyle(
                fontSize: 48.sp(context),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
