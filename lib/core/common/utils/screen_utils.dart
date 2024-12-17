import 'package:flutter/material.dart';

extension SizeExtension on num {
  /// Convert the number to dp (Density-independent Pixels)
  double dp(BuildContext context) {
    return this * MediaQuery.of(context).devicePixelRatio;
  }

  /// Convert the number to sp (Scale-independent Pixels)
  double sp(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final textScale = MediaQuery.of(context).textScaler.scale(1.0);
    return this * devicePixelRatio * textScale;
  }

  /// Get the value as width percentage
  double w(BuildContext context) {
    return (this / 100) * MediaQuery.sizeOf(context).width;
  }

  /// Get the value as height percentage
  double h(BuildContext context) {
    return (this / 100) * MediaQuery.sizeOf(context).height;
  }
}
