part of 'hover_bloc.dart';

abstract class HoverEvent {
  final String buttonId;
  const HoverEvent(this.buttonId);
}

class HoverEntered extends HoverEvent {
  const HoverEntered(super.buttonId);
}

class HoverExited extends HoverEvent {
  const HoverExited(super.buttonId);
}