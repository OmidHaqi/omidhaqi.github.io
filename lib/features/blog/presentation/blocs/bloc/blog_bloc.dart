import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/features/blog/data/datasources/api_provider.dart';
import 'blog_event.dart';
import 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final ApiProvider apiProvider;

  BlogBloc(this.apiProvider) : super(BlogInitial()) {
    on<FetchBlogPosts>(onFetchBlogPosts);
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
}
