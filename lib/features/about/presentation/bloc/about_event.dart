part of 'about_bloc.dart';

sealed class AboutEvent extends Equatable {
  const AboutEvent();

  @override
  List<Object> get props => [];
}

class FetchAboutItem extends AboutEvent {}
