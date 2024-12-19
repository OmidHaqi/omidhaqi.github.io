import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/contact_model.dart';
import '../../data/services/contact_service.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactService contactService;

  ContactBloc({required this.contactService}) : super(ContactInitial()) {
    on<SubmitContactForm>((event, emit) async {
      emit(ContactLoading());
      await _onSubmitContactForm(event, emit);
    });
  }

  Future<void> _onSubmitContactForm(
    SubmitContactForm event,
    Emitter<ContactState> emit,
  ) async {
    try {
      await contactService.submitContact(event.contact);
      emit(ContactSuccess());
    } catch (e) {
      emit(ContactError(e.toString()));
    }
  }
}
