part of 'blog_bloc.dart';

abstract class BlogState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BlogInitial extends BlogState {}

class BlogLoading extends BlogState {}

class BlogLoaded extends BlogState {
  final List<BlogModel> posts;

  BlogLoaded(this.posts);

  @override
  List<Object?> get props => [posts];
}

class BlogError extends BlogState {
  final String errorMessage;

  BlogError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class BlogPostLoaded extends BlogState {
  final BlogModel post;

  BlogPostLoaded(this.post);

  @override
  List<Object?> get props => [post];
}
