import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ox0/features/about/data/datasources/about_api_provider.dart';
import 'package:ox0/features/about/data/models/about_model.dart';

part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  final AboutApiProvider apiProvider;

  AboutBloc(this.apiProvider) : super(AboutInitial()) {
    on<FetchAboutItem>(onFetchHomeItem);
  }

  Future<void> onFetchHomeItem(
    FetchAboutItem event,
    Emitter<AboutState> emit,
  ) async {
    emit(AboutLoading());

    try {
      await apiProvider.getAboutItem();
      emit(AboutLoaded(apiProvider.aboutItem));
    } catch (e) {
      emit(AboutError(e.toString()));
    }
  }
}
