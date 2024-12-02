import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const routeName = '/test';
  const TestScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'HelloWorld',
        ),
      ),
    );
  }
}
