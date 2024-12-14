part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<HomeModel> homeItems;

 const HomeLoaded(this.homeItems);

  @override
  List<Object> get props => [homeItems];
}

class HomeError extends HomeState {
  final String errorMessage;

  const HomeError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
