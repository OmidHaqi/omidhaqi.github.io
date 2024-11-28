import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ox0',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Opacity(
            opacity: 0.25,
            child: Container(
              width: 559,
              height: 324,
              decoration: ShapeDecoration(
                
                gradient: LinearGradient(
                  begin: const Alignment(0.87, -0.50),
                  end: const Alignment(-0.87, 0.5),
                  colors: [
                    Colors.white.withOpacity(0.30000001192092896),
                    Colors.white.withOpacity(0.05000000074505806)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white.withOpacity(0.50),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  
                ),
              ),
              child: const Center(
                child: Text(
                  'HelloWorld',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
