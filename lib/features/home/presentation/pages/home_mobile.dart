import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/screen_utils.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppContiner(
          width: 350.dp(context),
          height: 200.dp(context),
          child: Center(
            child: Text(
              "Mobile",
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
