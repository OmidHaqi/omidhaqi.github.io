import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<bool> {
  SplashCubit() : super(false);

  void startTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(true);
  }
}
