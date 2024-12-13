import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/features/blog/data/datasources/blog_api_provider.dart';
import 'blog_event.dart';
import 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final BlogApiProvider apiProvider;

  BlogBloc(this.apiProvider) : super(BlogInitial()) {
    on<FetchBlogPosts>(onFetchBlogPosts);
    on<FetchSingleBlogPost>(onFetchSingleBlogPost);
  }

  Future<void> onFetchBlogPosts(
    FetchBlogPosts event,
    Emitter<BlogState> emit,
  ) async {
    emit(BlogLoading());

    try {
      await apiProvider.getPosts();
      emit(BlogLoaded(apiProvider.postList));
    } catch (e) {
      emit(BlogError(e.toString()));
    }
  }

  Future<void> onFetchSingleBlogPost(
    FetchSingleBlogPost event,
    Emitter<BlogState> emit,
  ) async {
    emit(BlogLoading());

    try {
      final post = await apiProvider.getPostBySlug(event.slug);
      if (post != null) {
        emit(BlogPostLoaded(post));
      } else {
        emit(BlogError('Post not found'));
      }
    } catch (e) {
      emit(BlogError(e.toString()));
    }
  }
}
