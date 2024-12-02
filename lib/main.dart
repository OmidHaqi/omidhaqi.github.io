import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ox0/core/common/blocs/desktop_nav_bar_route_cubit/desktop_nav_bar_route_cubit.dart';
import 'package:ox0/locator.dart';
import 'package:ox0/my_app.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DesktopNavBarRouteCubit>(
          create: (context) => DesktopNavBarRouteCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
