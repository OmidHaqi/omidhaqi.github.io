part of 'contact_bloc.dart';

sealed class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class SubmitContactForm extends ContactEvent {
  final ContactModel contact;

  const SubmitContactForm(this.contact);

  @override
  List<Object> get props => [contact];
}
