import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/screen_utils.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppContiner(
          width: 400.dp(context),
          height: 290.dp(context),
          child: Center(
            child: Text(
              "Tablet",
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
