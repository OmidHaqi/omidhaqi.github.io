part of 'works_bloc.dart';

abstract class WorksEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchWorksPosts extends WorksEvent {}

class FetchSingleWorkPost extends WorksEvent {
  final String slug;

  FetchSingleWorkPost(this.slug);

  @override
  List<Object?> get props => [slug];
}
