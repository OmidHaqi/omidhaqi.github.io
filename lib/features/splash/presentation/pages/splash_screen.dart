import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ox0/features/home/presentation/pages/home_wrapper.dart';
import 'package:ox0/features/splash/presentation/cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit()..startTimer(),
      child: BlocBuilder<SplashCubit, bool>(
        builder: (context, isFinished) {
          if (isFinished) {
            Future.microtask(
              () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  HomeWrapper.routeName,
                  ModalRoute.withName("home"),
                );
              },
            );
          }
          return Scaffold(
            body: Center(
              child: LoadingAnimationWidget.progressiveDots(
                color: Colors.white,
                size: 50,
              ),
            ),
          );
        },
      ),
    );
  }
}
