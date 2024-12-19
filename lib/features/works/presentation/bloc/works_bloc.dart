import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ox0/features/works/data/datasources/works_api_provider.dart';
import 'package:ox0/features/works/data/models/works_model.dart';

part 'works_event.dart';
part 'works_state.dart';

class WorksBloc extends Bloc<WorksEvent, WorksState> {
  final WorksApiProvider apiProvider;

  WorksBloc(this.apiProvider) : super(WorksInitial()) {
    on<FetchWorksPosts>(onFetchWorksPosts);
    on<FetchSingleWorkPost>(onFetchSingleWorksPost);
  }

  Future<void> onFetchWorksPosts(
    FetchWorksPosts event,
    Emitter<WorksState> emit,
  ) async {
    emit(WorksLoading());

    try {
      await apiProvider.getWorks();
      emit(WorksLoaded(apiProvider.workList));
    } catch (e) {
      emit(WorksError(e.toString()));
    }
  }

  Future<void> onFetchSingleWorksPost(
    FetchSingleWorkPost event,
    Emitter<WorksState> emit,
  ) async {
    emit(WorksLoading());

    try {
      final post = await apiProvider.getWorkBySlug(event.slug);
      if (post != null) {
        emit(WorksPostLoaded(post));
      } else {
        emit(WorksError('Post not found'));
      }
    } catch (e) {
      emit(WorksError(e.toString()));
    }
  }
}
