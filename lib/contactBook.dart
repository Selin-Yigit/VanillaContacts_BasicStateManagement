import 'package:vanillacontacts_course/contactClass.dart';

class ContactBook {
  //Singleton Design
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  //Contact'lerin tutulacağı liste
  final List<Contact> _contacts = [];
  // Ccontact sayısı => stream için kullanılıcak
  int get length => _contacts.length;

  void add({required Contact contact}) {
    _contacts.add(contact);
  }

  void remove({required Contact contact}) {
    _contacts.remove(contact);
  }

  Contact? contact({required int atIndex}) {
    return _contacts.length > atIndex ? _contacts[atIndex] : null;
  }
}