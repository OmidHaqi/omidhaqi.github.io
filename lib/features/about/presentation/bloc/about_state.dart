part of 'about_bloc.dart';

sealed class AboutState extends Equatable {
  const AboutState();

  @override
  List<Object> get props => [];
}

class AboutInitial extends AboutState {}

class AboutLoading extends AboutState {}

class AboutLoaded extends AboutState {
  final List<AboutModel> aboutItems;

  const AboutLoaded(this.aboutItems);

  @override
  List<Object> get props => [aboutItems];
}

class AboutError extends AboutState {
  final String errorMessage;

  const AboutError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
