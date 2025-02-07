part of 'blog_bloc.dart';
abstract class BlogEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchBlogPosts extends BlogEvent {}

class FetchSingleBlogPost extends BlogEvent {
  final String slug;

  FetchSingleBlogPost(this.slug);

  @override
  List<Object?> get props => [slug];
}
