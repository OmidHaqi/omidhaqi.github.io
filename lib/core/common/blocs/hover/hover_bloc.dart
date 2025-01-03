import 'package:flutter_bloc/flutter_bloc.dart';

part 'hover_event.dart';
part 'hover_state.dart';

class HoverBloc extends Bloc<HoverEvent, HoverState> {
  HoverBloc() : super(const HoverInitial()) {
    on<HoverEntered>((event, emit) {
      final newActiveButtons = Set<String>.from(state.activeButtons)..add(event.buttonId);
      emit(HoverStateChanged(newActiveButtons));
    });

    on<HoverExited>((event, emit) {
      final newActiveButtons = Set<String>.from(state.activeButtons)..remove(event.buttonId);
      emit(HoverStateChanged(newActiveButtons));
    });
  }
}
