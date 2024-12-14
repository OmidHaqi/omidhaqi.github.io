import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ox0/features/home/data/datasources/home_api_provider.dart';
import 'package:ox0/features/home/data/models/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
    final HomeApiProvider apiProvider;

  HomeBloc(this.apiProvider) : super(HomeInitial()) {
    on<FetchHomeItem>(onFetchHomeItem);
  }



  Future<void> onFetchHomeItem(
    FetchHomeItem event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());

    try {
      await apiProvider.getHomeItem();
      emit(HomeLoaded(apiProvider.homeItem));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

}
