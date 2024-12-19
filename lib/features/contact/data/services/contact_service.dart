import 'package:ox0/locator.dart';
import 'package:pocketbase/pocketbase.dart';
import '../models/contact_model.dart';

class ContactService {
  final pb = locator<PocketBase>();


  Future<void> submitContact(ContactModel contact) async {
    try {
      await pb.collection('emails').create(body: contact.toJson());
    } catch (e) {
      throw Exception('Failed to submit contact: ${e.toString()}');
    }
  }
}
