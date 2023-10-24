import 'package:flutter/material.dart';
import 'package:vanillacontacts_course/contactClass.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  //Singleton Design
  ContactBook._sharedInstance() : super([]);
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  /* ValueNotifier kullanarak zaten değerlerin değişimini kontrol ettiğimiz için ve aynı zamanda ValueNotifier
  kendi içinde bu verileri sakladığı için liste tutmaya gerek kalmadı. Onun yerine value değerini kullanmamız yeterli.
  //Contact'lerin tutulacağı liste
  final List<Contact> _contacts = [];
  // Ccontact sayısı => stream için kullanılıcak
  int get length => _contacts.length;
  */

  int get length => value.length;

  void add({required Contact contact}) {
    final contacts = value;
    contacts.add(contact);
    notifyListeners();
  }

  void remove({required Contact contact}) {
    final contacts = value;
    if (contacts.contains(contact)) {
      contacts.remove(contact);
      notifyListeners();
    }
  }

  Contact? contact({required int atIndex}) {
    return value.length > atIndex ? value[atIndex] : null;
  }
}
