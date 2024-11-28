import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 559,
          height: 324,
          foregroundDecoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.87, -0.50),
              end: const Alignment(-0.87, 0.5),
              colors: [
                Colors.white.withOpacity(0.07),
                Colors.white.withOpacity(0.02)
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: Colors.white.withOpacity(0.10),
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: const Center(
            child: Text(
              "ox0",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
