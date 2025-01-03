part of 'hover_bloc.dart';

abstract class HoverState {
  final Set<String> activeButtons;
  const HoverState(this.activeButtons);
}

class HoverInitial extends HoverState {
  const HoverInitial() : super(const {});
}

class HoverStateChanged extends HoverState {
  const HoverStateChanged(super.activeButtons);
}
