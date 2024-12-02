import 'package:bloc/bloc.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';

class DesktopNavBarRouteCubit extends Cubit<Map<String, String>> {
  DesktopNavBarRouteCubit()
      : super({
          'currentRoute': HomeScreen.routeName,
          'hoveredButton': '',
        });

  void updateRoute(String route) {
    emit({...state, 'currentRoute': route});
  }

  void updateHoveredButton(String route) {
    emit({...state, 'hoveredButton': route});
  }
}
