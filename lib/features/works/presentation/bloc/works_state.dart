part of 'works_bloc.dart';

abstract class WorksState extends Equatable {
  @override
  List<Object?> get props => [];
}

class WorksInitial extends WorksState {}

class WorksLoading extends WorksState {}

class WorksLoaded extends WorksState {
  final List<WorksModel> works;

  WorksLoaded(this.works);

  @override
  List<Object?> get props => [works];
}

class WorksError extends WorksState {
  final String errorMessage;

  WorksError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class WorksPostLoaded extends WorksState {
  final WorksModel work;

  WorksPostLoaded(this.work);

  @override
  List<Object?> get props => [work];
}
