import 'package:flutter/material.dart';
import 'package:vanillacontacts_course/contactBook.dart';
import 'package:vanillacontacts_course/contactClass.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade600,
        title: const Text("Vanilla Contacts"),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
          //contactBook içinde kullandığımız valuenotifier da olan değişikliklere göre ana sayfayı yenilemeliyiz.
          valueListenable: ContactBook(),
          builder: (context, value, child) {
            final contacts = value as List<Contact>;
            return ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return Dismissible(
                  onDismissed: (direction){
                  ContactBook().remove(contact: contact);
                  },
                  key: ValueKey(contact.id),
                  child: Material(
                    color: Colors.white,
                    elevation: 6.0,
                    child: ListTile(
                      title: Text(contact.name),
                    ),
                  ),
                );
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed("/new-contact");
        },
        backgroundColor: Colors.blueGrey.shade600,
        child: const Icon(Icons.add),
      ),
    );
  }
}
