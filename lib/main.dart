import 'package:flutter/material.dart';
import 'package:ox0/locator.dart';
import 'package:ox0/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocator();

  runApp(
    const MyApp(),
  );
}
